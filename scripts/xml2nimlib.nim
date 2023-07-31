import xmlparser
import tables
import strformat
import sets
import sequtils
import strutils
import xmltree
import os
# import bitops
import re
import algorithm

import skips
import typeDb

const customization_footer = {
    "qtcore/qstring": """
        proc newQString(s:cstring): QString {.header:headerFile, importcpp:"QString(@)",constructor.}
        proc newQString*(s:string): QString = newQString(s.cstring)
        proc Q*(s:string): QString = newQString(s.cstring)
        # Qt stores data as UTF-16, while nim assumes utf-8 (well, it doesn't care about unicode)
        # so we convert it here for display
        func `$`*(s:QString): string = 
            let xs=s.toUtf8
            for i in 0..<xs.length: result.add xs[i]
        func `$`*(s:ptr QString): string = $(s[])
        # Fix bug cpp2xml[1]
        proc indexOf*(this: QLatin1String, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.indexOf(@)".}
        proc lastIndexOf*(this: QLatin1String, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".}
        proc indexOf*(this: QString, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.indexOf(@)".}
        proc lastIndexOf*(this: QString, s:QString, `from`:cint = -1, case_sensitivity=CaseSensitive): cint {.header:headerFile, importcpp:"#.lastIndexOf(@)".}
        proc `==`*(this,r: QString): bool {.header:headerFile, importcpp:"operator==(@)".}
        """,
    "qtcore/qanystringview": """
        converter toQAnyStringView*(x:QString): QAnyStringView = newQAnyStringView(x)
        converter toQAnyStringView*(x:QByteArray): QAnyStringView = newQAnyStringView(x)
        """,
    "qtcore/qobject": """
        proc connect*(src:ptr QObject, signal:cstring, dst:ptr QObject, mth:cstring, `type`=AutoConnection) {.header:headerFile ,importcpp:"QObject::connect(@)".}
        proc connect*(src:ptr QObject, signal:string, dst:ptr QObject, mth:string, `type`=AutoConnection) = connect(src, signal.cstring, dst, mth.cstring, `type`)

        # connect used to be a function, however, to support importing custom
        # widgets, it was necessary to change it to a macro.
        # 
        # This macro (eventually) calls the `connect` method for a functor.
        # signalStr must be the signal used to connect regular object, e.g.
        #    `SIGNAL "toggled(bool)"` (this is unlike in C++ Qt lingo!).
        # The functor must be a function that has the {.exportcpp.} pragma.
        # E.g.
        # ```
        # proc on_functor_clicked() {.exportcpp.} = echo "Functor clicked"
        # connect(newQPushButton(Q "Button"), SIGNAL "clicked()", on_functor_clicked)
        # ```
        import macros
        var connectHelperId{.compileTime.} = 0
        macro connect*[OBJ,FUN](src:ptr OBJ, signal: string, functor:FUN) = 
            let signalStr = $`signal`
            assert signalStr[0]=='2', "Expected SIGNAL for signal '" & signalStr & "'"
            assert '(' in signalStr, "Expected (possibly empty) arg list for signal '" & signalStr & "'"
            let
                signalName:string=signalStr[1..<signalStr.find('(')]
                objType:string = ($src.getType().repr)["ptr[".len..^2]
                helperName = ident("connectHelper_" & $connectHelperId)
            connectHelperId.inc

            # when an emit is at the top-level, it will be emitted somewhere at the top.
            # However, we do not want that! Therefore, we put the emit inside a procedure.
            # The procedure cannot be put in this module, as the types are not known to QObject,
            # therefore, we put the connectHelper function where it is defined. To avoid duplicate
            # identifiers, we generate unique names for every connect ... There might be better
            # solutions, but for now it suffices ...
            result = quote do:
                proc helperName[OBJ2,FUN2](xsrc:ptr OBJ2, xobjType:static string, xsignalName:static string, xfunctor:FUN2) =
                    {.emit: ["QObject::connect(", xsrc, (", &" & xobjType & "::" & xsignalName & ", "), xfunctor ,  ");"] .}
                `helperName`(`src`, `objType`, `signalName`, `functor`)
            result[0][0]=helperName # Change the 'proc helperName' to 'proc ' with the dynamic helperName

        proc event*(nimQObject:ptr QObject, e:ptr QEvent): bool {.header:headerFile , importcpp:"#.event(@)".}
        """,
    "qtcore/qlist": """
        func len*[T](list: QList[T]): int = list.size
        func add*[T](list: QList[T], x:T) = list.push_back x
        iterator items*[T](list: QList[T]): T =
            for i in 0..<list.len: yield list.at(i.cint)
        """,
    "qtcore/qbytearray": """
        func newQByteArray*(xs: seq[char]): QbyteArray = (if xs.len>0: newQByteArray(xs[0].unsafeAddr, xs.len.cint) else: newQByteArray())
        func len*(list: QByteArray): int = list.size
        iterator items*(list: QByteArray): char =
            for i in 0..<list.len: yield list.at(i.cint)
        """,
    "qtwidgets/qapplication": """
        proc exec*(nimQObject:ptr QApplication):cint {.header:headerFile, importcpp: "#.exec()".}

        # params refers to the arguments given on the command line. The binary is added in this proc!
        template newQApplication*(args:seq[string]): ptr QApplication =
            var args2 = @[getAppFilename()]
            args2.add args
            
            var argv: cStringArray = allocCstringArray(args2)
            var argc = args2.len.cint

            newQApplication(argc, cast[ptr ptr char](argv))
            # See also NOTE:newQCoreApplication in QtCore/QCoreApplication
        """,
    "qtgui/qguiapplication": """
        # params refers to the arguments given on the command line. The binary is added in this proc!
        template newQGuiApplication*(args:seq[string]): ptr QGuiApplication =
            var args2 = @[getAppFilename()]
            args2.add args
            
            var argv: cStringArray = allocCstringArray(args2)
            var argc = args2.len.cint

            newQGuiApplication(argc, cast[ptr ptr char](argv))
            # See also NOTE:newQCoreApplication in QtCore/QCoreApplication
        """,
    "qtcore/qcoreapplication": """
        # params refers to the arguments given on the command line. The binary is added in this proc!
        template newQCoreApplication*(args:seq[string]): ptr QCoreApplication =
            var args2 = @[getAppFilename()]
            args2.add args

            var argv: cStringArray = allocCstringArray(args2)
            var argc = args2.len.cint

            newQCoreApplication(argc, cast[ptr ptr char](argv))
            # NOTE:newQCoreApplication: In the Qt docs:
            # "Warning: The data referred to by argc and argv must stay valid for the entire lifetime of the QCoreApplication object.
            # In addition, argc must be greater than zero and argv must contain at least one valid character string."
            # So we must *not* deallocCStringArray
            # argv.deallocCStringArray
        """,
    "qtcore/qflags": """
        func toSet*[Enum](this: QFlags[Enum]): set[Enum] =
            for e in Enum:
                if this.testFlag(e): 
                    try: result.incl e
                    except: discard

        import sets
        import macros
        macro enumFullArray(a: typed): untyped = newNimNode(nnkBracket).add(a.getType[1][1..^1])
        func toHashSet*[Enum](this: QFlags[Enum]): HashSet[Enum] =
            for e in enumFullArray(Enum):
                if this.testFlag(e): 
                    try: result.incl e
                    except: discard


    """,
    "qtcore/qstringlist": """
        proc newQStringList*(): QStringList = QStringList()
        # Making it a template for recursive module dependency reasons ...
        template newQStringList*(xs:seq[string]): QStringList = 
            var ret:QStringList = newQStringList()
            for x in xs: ret.add x.newQString
            ret
    """,
    }.toTable

const customization_header = {
    "qtcore/qstringlist": """
    import nimqt/qstring
    """,
    }.toTable

# This forces a specific base class when there are multiple base classes to choose from,
# as nim does not support multiple inheritance.
# In a next version, we might just add all supported methods.
const customization_inheritance = {
    "qtgui/qwindow class QWindow": "QObject",
    "qtgui/qoffscreensurface class QOffscreenSurface": "QObject",
    "qtgui/qpdfwriter class QPdfWriter": "QPagedPaintDevice",
    "qtgui/qpaintdevicewindow class QPaintDeviceWindow": "QWindow",
    "qtwidgets/qlayout class QLayout": "QLayoutItem",
    "qtwidgets/qgraphicsitem class QGraphicsObject": "QObject",
    "qtwidgets/qaccessiblewidget class QAccessibleWidget": "QAccessibleObject",
    "qtwidgets/qwidget class QWidget": "QObject",
    "qtwidgets/qgraphicswidget class QGraphicsWidget": "QGraphicsObject",
    "qtcore/qiodevice class QIODevice": "QIODeviceBase",
    "qtqml/qqmlextensionplugin class QQmlExtensionPlugin": "QObject",
    "qtqml/qqmlextensionplugin class QQmlEngineExtensionPlugin": "QObject",
    "qtcore/qstringlist class QStringList": "QList[QString]",
    }.toTable

# Perform a regex replacement in the final nim source code. In the replacement, use $1 etc to refer to groups.
const customization_replaceInNimSource = {
    "qtcore/qnamespace": @[
        # replace the lower case version with something else, to avoid duplicate names
        ("Key_Dead_a", "Key_Dead_a0"),
        ("Key_Dead_e", "Key_Dead_e0"),
        ("Key_Dead_i", "Key_Dead_i0"),
        ("Key_Dead_o", "Key_Dead_o0"),
        ("Key_Dead_u", "Key_Dead_u0"),
        ],
    }.toTable

const pureEnums = [
    newCm("qtcore","qnamespace").id_enum("QInternal_PaintDeviceFlags"),
    newCm("qtgui","qcolorspace").id_enum("QColorSpace_NamedColorSpace"),
    newCm("qtgui","qcolorspace").id_enum("QColorSpace_Primaries"),
    newCm("qtgui","qcolorspace").id_enum("QColorSpace_TransferFunction"),
    ].toHashSet

# These classes do not derive from RootObj.
const customization_noninheritable:HashSet[string] = [
    #"qtcore/qlist class QList",
    "qtcore/qstring class QString",
    ].toHashSet

# These classes must be inheritable.
const customization_forceInheritable:HashSet[string] = [
    "qtcore/qabstractitemmodel class QModelIndex",
    ].toHashSet

# These types are always pointer types
const customization_pointer_type:HashSet[string] = [
        "qtwidgets/qlistwidget class QListWidgetItem",
        "qtwidgets/qtablewidget class QTableWidgetItem",
        "qtgui/qundostack class QUndoCommand",
    ].toHashSet

# These types should never be a pointer type
const customization_nonpointer_type:HashSet[string] = [
        "qtgui/qpainter class QPainter",
    ].toHashSet

# skips.component = component
# skips.module = module

func join(xs:seq[string]): string = xs.join(", ")
func escapeNimReservedWords(n:string): string =
    let n=n.strip(chars={'_'})
    if n in ["unsafeAddr","addr", "and", "as", "asm", "bind", "block", "break", "case", "cast", "concept", 
        "const", "continue", "converter", "defer", "discard", "distinct", "div", "do", 
        "elif", "else", "end", "enum", "except", "export", "finally", "for", "from", 
        "func", "if", "import", "in", "include", "interface", "is", "isnot", "iterator",
        "let", "macro", "method", "mixin", "mod", "nil", "not", "notin", "object", "of", 
        "or", "out", "proc", "ptr", "raise", "ref", "return", "shl", "shr", "static", 
        "template", "try", "tuple", "type", "using", "var", "when", "while", "xor", "yield",
        ]: &"`{n}`"
    else: n

func primitiveCppTypeToNim(t:string): tuple[nimType:string,found:bool] =
    const UNKNOWN_PRIMITIVE_CPP_TYPE=("(unknown primitive cpp type)")
    let x=(if t=="void": ""
        elif t in ["bool","char"]: t
        elif t in ["int","long","ulong","short","ushort","uint"]: &"c{t}"
        elif t in ["float"]: "cfloat"
        elif t in ["double"]: "cdouble"
        elif t in ["uchar", "unsigned char"]: "char"
        elif t in ["char8_t", "signed char"]: "char"
        elif t in ["char16_t","unsigned short","uint16_t"]: "cushort"
        elif t in ["char32_t","unsigned","unsigned int","uint32_t"]: "cuint"
        elif t in ["unsigned long"]: "culong"
        elif t in ["ssize_t","size_type"]: "cint" # Technically, this is a ssize_t
        elif t in ["size_t"]: "csize_t"
        elif t in ["long long"]: "clonglong"
        elif t in ["unsigned long long"]: "culonglong"

        elif t in ["qlonglong","qint64"]: "clonglong"
        elif t in ["qulonglong","quint64"]: "culonglong"
        elif t=="qint8": "cschar"
        elif t=="quint8": "uint8"
        elif t=="qint16": "cshort"
        elif t=="quint16": "cushort"
        elif t=="qint32": "clong"
        elif t=="quint32": "cuint"
        elif t=="qreal": "cfloat"
        elif t=="qfloat16": "cfloat"
        elif t=="qsizetype": "cint"
        elif t=="qintptr": "cint" # Should be the size of a pointer
        elif t=="quintptr": "cuint" # Should be the size of a pointer

        else: UNKNOWN_PRIMITIVE_CPP_TYPE
        )
    if x==UNKNOWN_PRIMITIVE_CPP_TYPE: (nimType:"", found:false)
    else: (nimType:x, found:true)

func toFqName(x:string): seq[string] = x.split("::")
func fixNameSpace(x:string): string = x.replace("::", "_")
template nimName(cd:typed): string = cd.fqName.join("_")
template cppName(cd:typed): string = cd.fqName.join("::")
func dropSpecialTypePrefixes(cppType:string): string = (&" {cppType} ").replace(re" (const|struct|class|typename) ","").strip
func tplsToNim*(t:seq[string]): string = (if t.len>0: &"[{t.join}]" else: "")


iterator pairs(n: XmlNode): (int,XmlNode) =
    var i=0
    for x in n:
        yield (i,x)
        i.inc

type
    Access* = enum Public, Protected, Private, Unknown
    Module* = object
        headerImports*:HashSet[string] # These are imports that should be added to the header
        imported*:HashSet[string] # tracks which modules have been imported
        headerExports*:HashSet[string] # These are exports that should be added to the header

        # module*:string
        classes*:seq[ClassData]
        enums*: seq[EnumData]
        typedefs*: seq[Typedef]

    RefKind = enum Regular, Reference, Pointer, Pointer2
    # Type with additional templates, e.g. QList[T] or QList[ptr QObject]
    TplType* = tuple[cppType:string, nimType:string, refKind:RefKind, tpls:seq[string]]
    Typedef = tuple[name:string,alias_for_nim:TplType]
    Param* = object
        tplType*: TplType
        name*: string
        hasDefaultValue*: bool

    Callable* = object of RootObj
        name*:string
        params*:seq[Param]
        decorations*:seq[string] # E.g. static
    MethodData* = object of Callable
        retType*: TplType
        isStatic*: bool
    ConstructorData* = object of Callable

    EnumData* = object
        enumName*: string # Track it separately, in case of anonymous enums ...
        fqName*: seq[string]
        kvs*: seq[(string,string)]
    ClassData* = object
        fqName*: seq[string]
        pureObject*: bool # If this object has no base_classes. TODO check if assert(pureObject==parentObj.len==0)
        parentObj*: seq[TplType]
        constructors*: seq[ConstructorData]
        publicMethods*: seq[MethodData]
        protectedMethods*: seq[MethodData]
        enums*: seq[EnumData]
        typedefs*: seq[Typedef]
        allTypes: AllTypes

    AllTypes = object
        db: TypeDb
        # cpp type to another cpp type
        cppTypeAliases: Table[string,string]
        templateParams: seq[string]
    State* = object
        component*,module*:string
        db*:TypeDb
    
    CallbackTypeException* = object of CatchableError
    
    CallableData = object
        classData:ClassData
        name:string
        tpls:seq[string]
        params:seq[Param]
        retType:string
        suffix:string


# func toNim*(x:TplType, c:ClassData, typeReplacements=initTable[string,string]()): string
# func toNim*(x:Param, c:ClassData): string
# func toNim*(x:ConstructorData, c:ClassData, state:State): seq[tuple[decl,signature:string]]
# func toNim*(x:MethodData, c:ClassData, visibility:Access, state:State): seq[tuple[decl,signature:string]]

func toNim*(x:TplType, c:ClassData, typeReplacements=initTable[string,string]()): string
func toNim*(x:Param, c:ClassData, typeReplacements:Table[string,string]): string
func toNim*(x:ConstructorData, c:ClassData, state:State): seq[CallableData]
func toNim*(x:MethodData, c:ClassData, visibility:Access, state:State): seq[CallableData]



func fixImport*(allTypes:AllTypes, class:string, context:string): string = 
    let class1=(if '[' in class: class.split("[")[0] else: class)
    let class1_lc=class1.toLowerAscii
    let class2_lc=class1_lc.fixNameSpace

    if class in allTypes.templateParams: return class

    var class=class
    while allTypes.cppTypeAliases.hasKey class:
        class=allTypes.cppTypeAliases[class]

    if allTypes.db.names.hasKey(class1_lc):   return allTypes.db.xs[allTypes.db.names[class1_lc]].toImport
    elif allTypes.db.names.hasKey(class2_lc): return allTypes.db.xs[allTypes.db.names[class2_lc]].toImport
    
    # Type not found, look in parent classes
    # E.g. QFile::Permissions is not found in QFile, but QIODevice::Permissions
    let qs=class1_lc.split("::")
    if qs.len==2:
        if not allTypes.db.names.hasKey(qs[0]):
            raise newException(CallbackTypeException, &"func fixImport: class {class}: {qs[0]} is not found in allTypes.db ({qs})\ncontext '{context}'") #$qs & "\n" & $allTypes.cppTypeAliases
        for parent in allTypes.db.listBaseClassesRec(allTypes.db.xs[allTypes.db.names[qs[0]]]):
            if allTypes.db.names.hasKey (&"{parent}::{qs[1]}").toLowerAscii.fixNameSpace:
                return allTypes.fixImport(&"{parent}::{qs[1]}", context)
    
    # debugEcho &"\n\nCONTEXT {context}\n\ttypeDb.xs.len:{allTypes.db.xs.len}\n\tTemplates: {allTypes.templateParams}\n\tclass:'{class1}' '{class2_lc}' (w/o namespace)\n\tcppTypeAliases: {allTypes.cppTypeAliases}\n"
    # debugEcho allTypes.db.names
    raise newException(CallbackTypeException, 
        &"func fixImport: class {class}: '{class1_lc}'.split('::').len!=2\ncontext '{context}'")
    # assert(false, "fixImport failed! Check message above")
    # quit(1)

func merge(this:var Module, r:Module) =
    # assert this.module==r.module

    this.headerImports.incl r.headerImports
    this.imported.incl r.imported
    this.headerExports.incl r.headerExports
    this.classes.add r.classes
    this.enums.add r.enums
    this.typedefs.add r.typedefs

# Converts something like QList<int*> or QList<T> to something easier 
# for nim to understand.
func cppTypeToNimType(allTypes:AllTypes, state:State, cppType:string, context:string, imports:var HashSet[string]): TplType =
    result.cppType=cppType
    
    if "(" in cppType and ")" in cppType:
        raise newException(CallbackTypeException, &"func cppTypeToNimType: {cppType}: skipping callback type\ncontext '{context}'")

    # For now, we skip these. I don't think they're that important, and then make everything
    # more complex.
    # We match here at something like (name)(args)
    if cppType =~ re".*\([^)]+\)[^(]*\([^)]*\).*":
        raise newException(CallbackTypeException, &"func cppTypeToNimType: {cppType}: cppType does not match pattern\ncontext '{context}'")

    var cppType:string = cppType.dropSpecialTypePrefixes
    while allTypes.cppTypeAliases.hasKey(cppType):
        cppType=allTypes.cppTypeAliases[cppType].dropSpecialTypePrefixes

    let primitiveType=cppType.primitiveCppTypeToNim
    if primitiveType.found: 
        result.nimType=primitiveType.nimType
        
    elif cppType.endsWith("*") or cppType.endsWith("&"): 
        if cppType.endsWith("**"):
            var res=allTypes.cppTypeToNimType(state, cppType[0..^3], context, imports)
            result.nimType=res.nimType
            result.tpls=res.tpls
            result.refKind=Pointer2
        else:
            var res=allTypes.cppTypeToNimType(state, cppType[0..^2], context, imports)
            result.nimType=res.nimType
            result.tpls=res.tpls
            result.refKind=(
                if cppType.endsWith("*"): Pointer
                else: Reference)
        
    elif cppType =~ re.re"^([^<]+)<(.*)>$":
        result.nimType=allTypes.cppTypeToNimType(state, matches[0], context, imports).nimType
        result.tpls=matches[1].split(",")
            .mapIt(allTypes.cppTypeToNimType(state, it.fixNameSpace, context,imports).toNim(ClassData()))
        
    elif cppType.startsWith("Q"):
        let i=allTypes.fixImport(cppType, context)
        if i != (&"{state.component}/{state.module}").toLowerAscii: imports.incl i
        # let x=cppType.primitiveCppTypeToNim        
        # if not x.found:
        #     raise newException(CallbackTypeException, &"{cppType} in context '{context}'")
        result.nimType=cppType
        
    else: 
        result.nimType=cppType
    
    result.nimType=result.nimType.fixNameSpace.replaceSpecialTypes

# version==0: nimVersion<(1.9.0)
# version==1: nimVersion>=1.9.0
# In Nim 1 (<1.9), we had to attach the inheritable pragma to the object, due to some bug.
# In later versions, this syntax was not supported anymore.
func typeDecl*(c:ClassData, state:State, imports:var HashSet[string], version:int):string =
    let id = &"{state.component}/{state.module} class {c.nimName}"
    let (parentObj,tpls)=(
            if customization_inheritance.hasKey(id):
                (customization_inheritance[id], 
                    concat(c.allTypes.templateParams, c.parentObj.mapIt(it.tpls.mapIt(it.strip)).concat).deduplicate.tplsToNim
                    )
            elif c.parentObj.len==1:
                let tmp:seq[TplType]=c.parentObj
                (tmp[0].nimType, concat(c.allTypes.templateParams, tmp[0].tpls.mapIt(it.strip)).deduplicate.tplsToNim)
            else:
                assert c.parentObj.len<=1, &"c++ Object {c.nimName} has multiple parents, while nim only supports 1. Please specify in customization_inheritance the most desirable parent.\n{id} in {customization_inheritance}"
                ("", c.allTypes.templateParams.tplsToNim)
        )
    
    assert c.fqName.len>0, $c
    let startOfDecl = &"{c.nimName.escapeNimReservedWords.replaceSpecialTypes}*{tpls} "
    var 
        pragmas = @["header:headerFile", &"""importcpp:"{c.cppName}" """, ]
        objInheritance = ""

    if id in customization_noninheritable:
        objInheritance = "object"
    elif #[c.pureObject or ]# parentObj.len==0 or (id in customization_forceInheritable):
        pragmas.add "pure"
        if version==0:
            objInheritance = "object {.inheritable.}"
        elif version==1:
            pragmas.add "inheritable"
            objInheritance = "object"
    else:
        discard c.allTypes.cppTypeToNimType(state, parentObj, "typeDecl", imports)
        pragmas.add "pure"
        objInheritance = &"object of {parentObj}"
    startOfDecl & "{." & pragmas.join(",") & ".} = " & objInheritance

func enumDecl*(e:EnumData, c:ClassData, state:State): tuple[enums:string, consts:seq[string]] =
    var xs:seq[string]
    var counter=0
    var kvs:seq[(string,int)]

    var values:Table[int,seq[string]]
    for x in e.kvs:
        let name=x[0]
        # assert x[1].len>0, $e.kvs
        # counter=(if x[1].len>0: x[1].evalStr else: counter)
        counter=(if x[1].len>0: x[1].parseInt else: counter)
        # counter=x[1].parseInt
        # matheval.addVar(name, counter.float)
        kvs.add((name, counter))
        try: values[counter].add name
        except CatchableError: values[counter] = @[name]
        counter.inc
    
    kvs.sort(cmp=proc(l,r:(string,int)):int=cmp(l[1],r[1]))
    # Print the uniques
    for x in kvs:
        let name=x[0]
        if e.enumName.len>0 and name==values[x[1]][0]:
            let ws=(if ((xs.len+1) mod 5) == 0: "\n    " else: "")
            if x[0].len>0:
                xs.add ws & (if x[1]>0: &"{x[0]} = 0x{x[1]:x}" else: &"{x[0]} = {x[1]}")
        elif e.nimName.len>0:
            result.consts.add &"{e.nimName}{name}* = {x[1]} # from anonymous enum {values[x[1]][0]}"
        else:
            result.consts.add &"{name}* = {x[1]} # from anonymous enum {values[x[1]][0]}"
    
    if e.enumName.len>0:
        let id=newCm(state.component, state.module).id_enum(e.nimName.escapeNimReservedWords.replaceSpecialTypes)
        let pureness=(if id in pureEnums: ", pure" else: "")
        result.enums=e.nimName.escapeNimReservedWords.replaceSpecialTypes & &"* {{.header:headerFile,importcpp:\"{e.cppName}\"{pureness}.}} = enum {xs.join.strip}"




proc processNode*(xml:XmlNode, inClass:bool, allTypes:var AllTypes, state:State): Module =
    let cm=newCm(state.component, state.module)
    when true:
        proc select_params(member:XmlNode, allTypes:AllTypes, modData:var Module): seq[Param] =
            member.pairs.toSeq
                .filterIt(it[1].tag=="param")
                .mapIt(
                    block: # it:(int,XmlNode)
                        let n=it[1]
                        let typ=n.attr("type")
                        Param(
                            tplType: allTypes.cppTypeToNimType(state, typ, $member, modData.headerImports),
                            name: (if n.attr("name").len>0: n.attr("name") else: &"arg_{it[0]}"),
                            # defaultValue: n.getDefaultValue,
                            hasDefaultValue: n.child("first_expr")!=nil or n.child("value")!=nil
                            )
                    )

        proc select_constructors(n:XmlNode, vis:string, allTypes:AllTypes, modData:var Module): seq[ConstructorData] =
            n.items.toSeq
                .filterIt(
                    try:
                        it.tag=="constructor" and 
                        it.attr("__vis__")==vis and 
                        cm.id_ctor(allTypes.cppTypeToNimType(state, it.attr("name"), 
                            $n, modData.headerImports).nimType, 
                            it.attr("signature").fixNameSpace
                            ).skippable(cm, Ctor)==false
                    except CallbackTypeException:
                        false
                ).mapIt(
                    try:
                        ConstructorData(
                            name: allTypes.cppTypeToNimType(state, it.attr("name"), $n, modData.headerImports).nimType,
                            params: it.select_params(allTypes, modData),
                            decorations: (if it.attr("storage_class").contains("static"): @["static"] else: @[]),
                            )
                    except CallbackTypeException:
                        ConstructorData()
                ).filterIt(it.name.len>0)
        
        func filterChildrenByTag(n:XmlNode, tag:string): seq[XmlNode] = n.items.toSeq.filterIt(it.tag==tag)

        proc select_methods(n:XmlNode, vis:string, allTypes:AllTypes, modData:var Module): seq[MethodData] =
            n.items.toSeq
                .filterIt(
                    ((it.tag=="method") or
                        # This is for trying to solve some bug cpp2xml [2]
                        (it.tag=="function_template" and it.filterChildrenByTag("template_parameter").filterIt(it.attr("name").len>0).len==0)
                    )and
                    it.attr("__vis__")==vis and 
                    cm.id_method(it.attr("name"), it.attr("signature").fixNameSpace, it.attr("ret_type").fixNameSpace).skippable(cm, Method)==false
                ).mapIt(
                    try:
                        MethodData(
                            name:it.attr("name"),
                            params: it.select_params(allTypes, modData),
                            decorations: (if it.attr("storage_class").contains("static"): @["static"] else: @[]),
                            retType: allTypes.cppTypeToNimType(state, it.attr("ret_type"), "select_methods", modData.headerImports),
                            isStatic: it.attr("is_static")!="0",
                            )
                    except CallbackTypeException:
                        # debugEcho "\n\n\n\n\n\nEXCEPTION\n",it.attr("name"), getCurrentExceptionMsg()
                        MethodData()
                ).filterIt(it.name.len>0)

        proc select_enums(n:XmlNode, vis:string): seq[EnumData] =
            n.items.toSeq.filterIt(it.tag=="enum" and
                    it.attr("__vis__")==vis and
                    cm.id_enum(it.attr("full_name").fixNameSpace).skippable(cm, Enum)==false
                ).map(proc(it:XmlNode):EnumData=
                    let fullName=it.attr("full_name")
                    for e in it.items:
                        assert e.attr("expression").len>0 xor e.attr("value").len>0, $e

                    EnumData(
                        enumName: it.attr("name").strip,
                        fqName: fullName.toFqName,
                        # Above we assert expr.len>0 xor value.len>0, so we can here just 
                        # concatenate them together :)
                        kvs: it.items.toSeq.mapIt((it.attr("name"), it.attr("value") & it.attr("expression"))),
                        )
                    )
        
        proc select_typedefs(n:XmlNode, allTypes:var AllTypes, modData:var Module): seq[Typedef] =
            let classFullName=n.attr("full_name")
            for x in n.items.toSeq.filterIt(it.tag in ["type_alias", "type_def"]):
                allTypes.cppTypeAliases[x.attr("name")]=x.attr("alias_for").dropSpecialTypePrefixes
                allTypes.cppTypeAliases[x.attr("full_name")]=x.attr("alias_for").dropSpecialTypePrefixes
                
                if cm.id_alias(x.attr("full_name").dropSpecialTypePrefixes.fixNameSpace, 
                        x.attr("alias_for").dropSpecialTypePrefixes.fixNameSpace
                        ).skippable(cm, Alias)==false:
                    try:
                        let alias_for_nim=allTypes.cppTypeToNimType(state,
                            x.attr("alias_for"), 
                            &"class {classFullName}::typedef {x}", 
                            modData.headerImports)
                        if alias_for_nim.nimType in allTypes.templateParams:
                            # Here we have something like QList::value_type * = T
                            # It is useless to add this to the typedefs ...
                            # We keep the check here, though, because we need the call to cppTypeToNimType above
                            discard
                        elif alias_for_nim.toNim(ClassData()).len>0:
                            result.add((
                                name: x.attr("full_name").fixNameSpace,
                                alias_for_nim: alias_for_nim
                                ))
                    except CallbackTypeException: 
                        # echo "CallbackTypeException for"
                        # echo "    ",x.attr("full_name")
                        # echo "    ",getCurrentException()[].msg
                        discard


        proc do_class(n:XmlNode, fullNamePts:seq[string], allTypes: AllTypes, modData:var Module): ClassData =
            let fullName=n.attr("full_name")
            if cm.id_class(fullName.fixNameSpace).skippable(cm, Class)==false and n.isVisible:
                var allTypes=allTypes
                
                result=ClassData(
                    fqName: fullName.toFqName,
                    pureObject: n.items.toSeq.filterIt(it.tag=="base_class").len==0,
                    # NOTE: typedefs *must* come before the next fields: select_typedefs possibly 
                    # sets stuff in allTypes that is used in e.g. cppTypeToNimType!
                    typedefs: n.select_typedefs(allTypes, modData),
                    parentObj: n.items.toSeq.filterIt(it.tag=="base_class")
                        .mapIt(allTypes.cppTypeToNimType(state, it.attr("name"), &"class {fullName}", modData.headerImports)),
                    constructors: n.select_constructors("public", allTypes, modData),
                    publicMethods: n.select_methods("public", allTypes, modData),
                    protectedMethods: n.select_methods("protected", allTypes, modData),
                    # NOTE: this field must be set last.
                    allTypes: allTypes
                    )
            else:
                result=ClassData()
    
    for n in xml:
        if n.kind!=xnElement: debugEcho "Skipping ",n; continue
        let fullName=n.attr("full_name")
        let pts=fullName.split("::")

        case n.tag
        of "class_decl":
            result.classes.add do_class(n, pts, allTypes, result)
            result.merge n.processNode(inClass=true, allTypes, state)
        of "class_template":
            var allTypes=allTypes
            allTypes.templateParams=n.items.toSeq.filterIt(it.tag=="template_parameter").mapIt(it.attr("name").strip)
            result.classes.add do_class(n, pts, allTypes, result)
            result.merge n.processNode(inClass=true, allTypes, state)
        of "type_alias", "type_def": result.typedefs.add n.select_typedefs(allTypes, result)
        of "enum": discard
        of "namespace": 
            if cm.id_namespace(fullName.fixNameSpace).skippable(cm, Namespace)==false:
                if not inClass:
                    result.typedefs.add n.select_typedefs(allTypes, result)
                result.merge n.processNode(inClass, allTypes, state)
        of "macro_definition", "var_decl": discard
        of "method": discard
        of "member_function", "constructor", "destructor": discard # We can ignore these, as we are not interested in implementations
        of "function_template", "function": discard
        of "field_decl", "access_specifier","conversion_function","template_parameter": discard
        of "base_class","using","type_ref","first_expr": discard
        of "MISSING_CXCursor_VisibilityAttr","MISSING_CXCursor_StaticAssert",
            "MISSING_CXCursor_ClassTemplatePartialSpecialization","MISSING_CXCursor_UnionDecl": discard
            
        else:
            debugEcho &"# xml2nim: Not handling '{n.tag}': '{full_name}'"
    result.enums.add xml.select_enums("public")
    result.enums.add xml.select_enums("protected")
    if not inClass: result.typedefs.add xml.select_typedefs(allTypes, result)
    result.classes = result.classes.filterIt(it.fqName.len>0)

    try:
        for tii in state.db.modules[state.component.toLowerAscii][state.module.toLowerAscii]:
            let ti=state.db.xs[tii]
            if ti.mt==DerivedAlias:
                let cm2=newCm(ti.component, ti.module)
                if cm2.id_alias(ti.name, ti.alias_for)
                    .skippable(cm2, Alias)==false:
                    result.typedefs.add (
                        name:ti.name, 
                        alias_for_nim:(cppType:ti.alias_for.replace("_","::"), 
                        nimType:ti.alias_for, 
                        refKind: Regular, 
                        tpls: @[]))
    except CatchableError:
        discard

proc processFile*(xmlInputFile:string, state:State): tuple[cppHeaderFile:string, module:Module, allTypes:AllTypes] = 
    var allTypes=AllTypes(db:state.db)
    let xml=loadXml(xmlInputFile)
    (
        cppHeaderFile:xml.attr("component")/xml.attr("module")&".h", 
        module:xml.processNode(false, allTypes, state), 
        allTypes:allTypes)


# Functions to convert something to Nim code
when true:
    func numDefaultParameters(x:Callable): int = x.params.filterIt(it.hasDefaultValue).len

    func toNim*(x:TplType, c:ClassData, typeReplacements:Table[string,string]=initTable[string,string]()): string = 
        assert not x.nimType.startsWith "const "
        result = case x.refKind
            of Pointer: "ptr "
            of Pointer2: "ptr ptr "
            of Regular,Reference: ""
        result = result & (
            if c.nimName==x.nimType: c.nimName & c.allTypes.templateParams.tplsToNim
            else: typeReplacements.getOrDefault(x.nimType, x.nimType) & x.tpls.tplsToNim
            )
        
    func toNim*(x:Param, c:ClassData, typeReplacements:Table[string,string]): string = 
        &"{x.name.escapeNimReservedWords.strip}: {x.tplType.toNim(c, typeReplacements).strip}"
        # if x.defaultValue.len>0: result = &"{result} = {x.defaultValue.replaceSpecialValues}"

    func decl(c:CallableData):string =
        let params=c.params.mapIt(it.toNim(c.classData, initTable[string,string]()))
        result = &"proc {c.name}*{c.tpls.tplsToNim}({params.join})"
        if c.retType.len>0: result &= &": {c.retType}"
        result &= &" {c.suffix.strip}"
    # On windows clong=int32, while on {linux,osx} clong=int.
    # This can lead to duplicate definitions in some cases, so we should
    # take care to take this differences into account.
    func signature(c:CallableData, typeReplacements:Table[string,string]):string =
        let params=c.params.mapIt(it.toNim(c.classData, typeReplacements))
        &"{c.name}*{c.tpls.tplsToNim}({params.join})"
    func nim_signature(c:CallableData):string = c.signature(initTable[string,string]())
    func win_signature(c:CallableData):string = c.signature({"clong":"cint", "culong":"cuint"}.toTable)
    func lnx_signature(c:CallableData):string = c.signature({"clong":"csize", "culong":"csize_t"}.toTable)
    func bsd_signature(c:CallableData):string = c.lnx_signature
    func osx_signature(c:CallableData):string = c.lnx_signature
    
    func toNim*(x:ConstructorData, c:ClassData, state:State): seq[CallableData] =
        let tpls=c.allTypes.templateParams
        let id = &"{state.component}/{state.module} class {c.nimName}"
        let shouldBePtr=(id notin customization_nonpointer_type) and
            (state.db.hasChildClasses(c.nimName) or c.parentObj.len>0 or (id in customization_pointer_type))

        if x.numDefaultParameters>0:
            result.add(CallableData(suffix: &"# {x.numDefaultParameters} default parameters!"))

        for i in 0..x.numDefaultParameters:
            let idxs=0..<x.params.len-i
            var xx=CallableData(
                classData:c,
                name: &"new{c.nimName}", 
                tpls: tpls, 
                params: x.params[idxs],
                suffix: "")
            if shouldBePtr:
                let pragmas = &"{{. header:headerFile, importcpp:\"new {c.nimName}(@)\" .}}"
                xx.retType = &"ptr {c.nimName}{tpls.tplsToNim}"
                xx.suffix = &"{pragmas} # " & x.decorations.join
            else:
                let pragmas = &"{{. header:headerFile, importcpp:\"{c.nimName}(@)\", constructor .}}"
                xx.retType = &"{c.nimName}{tpls.tplsToNim}"
                xx.suffix = &"{pragmas} # " & x.decorations.join
            result.add xx

    # NOTE1
    # There is a bug somewhere in libclang where sometimes the template param is set to the generic T,
    # if it was not explicitly specified.
    # E.g. template<class Enum> class QFlags { QFlags &operator&=(int mask); };
    func toNim*(x:MethodData, c:ClassData, visibility:Access, state:State): seq[CallableData] =
        let id = &"{state.component}/{state.module} class {c.nimName}"
        let shouldBePtr=(id notin customization_nonpointer_type) and
            (state.db.hasChildClasses(c.nimName) or c.parentObj.len>0 or (id in customization_pointer_type))
        let retType = x.retType.toNim(c)
        let tpls=c.allTypes.templateParams
        # let finalType=(if shouldBePtr: "ptr " else: "") & &"{c.nimName}{tpls}"
        let finalName=(if x.name.startsWith("operator"): x.name.replacef(re.re"operator(.*)", "`$1`") else: x.name).strip

        case visibility
        of Public,Protected:
            if x.numDefaultParameters>0:
                result.add(CallableData(suffix: &"# {x.numDefaultParameters} default parameters!"))

            for i in 0..x.numDefaultParameters:
                let idxs=0..<x.params.len-i
                # NOTE we don't add decorations anymore so we can deduplicate unique functions more reliably
                let (finalName, pragmas, nimArgs, decorations)=(
                    if x.isStatic:
                        let pragmas: string = &"{{.header:headerFile, importcpp:\"{c.cppName}::{x.name}(@)\".}}"
                        var nimArgs: seq[Param] = x.params[idxs]
                        # To avoid name clashes, we must prefix the class name for static methods
                        (&"static_{c.nimName}_{finalName}", pragmas, nimArgs, @["static"])
                    else:
                        let pragmas: string = &"{{.header:headerFile, importcpp:\"#.{x.name}(@)\".}}"
                        let this_param = Param(
                            name: "this", 
                            tplType: (
                                cppType: "",
                                nimType: c.nimName, 
                                refKind: (if shouldBePtr: RefKind.Pointer else: RefKind.Regular),
                                tpls: tpls
                                ))
                        let nimArgs: seq[Param] = concat(@[this_param], x.params[idxs])
                        (finalName, pragmas, nimArgs, @[])
                    )
                
                var x=CallableData(
                    classData:c,
                    name: finalName.escapeNimReservedWords,
                    tpls: tpls, 
                    params: nimArgs,
                    retType: retType,
                    suffix: &"{pragmas} # {visibility} {decorations.join}")
                result.add x
        else:
            assert false


func toNimFile*(file:tuple[cppHeaderFile:string, module:Module, allTypes:AllTypes], state:State): string =
    const IND=4
    
    func outputEnums(xs:var seq[string], enums:seq[EnumData], c:ClassData, lvl:int, ctx:string, addEnums,addConsts:bool) =
        let (enums,consts)=block:
            var res:tuple[enums:seq[string], consts:seq[string]]
            for e in enums:
                let x=e.enumDecl(c, state)
                if x.enums.len>0: res.enums.add x.enums
                if x.consts.len>0: res.consts.add x.consts
            res
        if enums.len>0 and addEnums:
            xs.add (&"# {ctx}").indent((lvl+1)*IND)
            for e in enums: xs.add e.indent((lvl+1)*IND)
        if consts.len>0 and addConsts:
            xs.add (&"# {ctx}").indent((lvl+1)*IND)
            for e in consts: xs.add e.indent((lvl+1)*IND)

    func get_imports(x:TplType, allTypes:AllTypes, state:State): HashSet[string] = 
        discard allTypes.cppTypeToNimType(state, x.cppType, "get_imports", result)
    func get_imports(x:Callable, allTypes:AllTypes, state:State): HashSet[string] = 
        for p in x.params: discard allTypes.cppTypeToNimType(state, p.tplType.cppType, "get_imports", result)
    func get_imports(x:MethodData, allTypes:AllTypes, state:State): HashSet[string] =
        discard allTypes.cppTypeToNimType(state, x.retType.cppType, "get_imports", result)
        for p in x.params:
            discard allTypes.cppTypeToNimType(state, p.tplType.cppType, "get_imports", result)

        
    var xs:seq[string]
    block:
        var imports:HashSet[string]
        var definedProcs,definedProcs_lnx,definedProcs_bsd,definedProcs_osx,definedProcs_win:HashSet[string]
    
        xs.add &"const headerFile* = \"{file.cppHeaderFile}\"\n"

        block:
            let id = &"{state.component}/{state.module}"
            if customization_header.hasKey id:
                xs.add &"# Additional header code for {id}"
                xs.add customization_header[id].dedent


        if true: # Output enums
            var tmp:seq[string]
            tmp.outputEnums(file.module.enums, ClassData(), 0, "Global", addEnums=true, addConsts=false)
            for n,class in file.module.classes:
                tmp.outputEnums(class.enums, class, 0, class.nimName, addEnums=true, addConsts=false)

            if tmp.len>0:
                xs.add "type"
                xs.add "# Enums found in the C++ code".indent(IND)
                xs.add tmp
                xs.add ""
            
        if true: # Output classes
            var 
                versions:seq[seq[string]] = @[newSeq[string](), newSeq[string]()]
                newImports:seq[HashSet[string]] = @[initHashSet[string](), initHashSet[string]()]
            for version in [0,1]:
                # var tmp:seq[string]
                # var newImports:HashSet[string]
                var definedClasses:HashSet[string]
                for n,c in file.module.classes:
                    if c.nimName notin definedClasses:
                        definedClasses.incl c.nimName
                        versions[version].add c.typeDecl(state, newImports[version], version).indent(IND)

            if versions[0] == versions[1]:
                # No need to generate types for different nim versions
                for i in newImports[0]:
                    if i notin imports: xs.add (&"import nimqt/{i}")
                    imports.incl i
                
                xs.add "type"
                xs.add "# Classes found in the C++ code".indent(IND)
                xs.add versions[0]
            else:
                # In this case, we have (probably) object definitions that inherit from something
                # but using a different syntax depending on the nim compiler.
                
                # The push warning Deprecated ideally is inside the 'when' statement, but it
                # does not seems to work there ...
                xs.add "# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'"
                xs.add "{.push warning[Deprecated]: off.}"
                for version in [0,1]:
                    if versions[version].len>0:
                        case version
                        of 0: xs.add "when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):"
                        of 1: xs.add "elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):"
                        else: assert(false)

                        for i in newImports[version]:
                            if i notin imports: xs.add &"    import nimqt/{i}"
                            imports.incl i
                        
                        xs.add "    type"
                        xs.add "    # Classes found in the C++ code".indent(IND)
                        xs.add versions[version].mapIt(it.indent(IND))

                xs.add "{.push warning[Deprecated]: on.}"
        
        if true:
            var definedTypedefs:HashSet[string]
            var tmp:seq[string]
            
            for x in file.module.typedefs:
                for i in x.alias_for_nim.get_imports(file.allTypes, state):
                    if i notin imports:
                        xs.add (&"import nimqt/{i}")
                        imports.incl i

                let t = &"{x.name.escapeNimReservedWords} * = {x.alias_for_nim.toNim(ClassData())}"
                if t notin definedTypedefs:
                    definedTypedefs.incl t
                    tmp.add t.indent(IND)

            for n,class in file.module.classes:
                for x in class.typedefs:
                    for i in x.alias_for_nim.get_imports(class.allTypes, state):
                        if i notin imports:
                            xs.add (&"import nimqt/{i}")
                            imports.incl i
                        
                    let t = &"{x.name.escapeNimReservedWords} * = {x.alias_for_nim.toNim(ClassData())}"
                    if t notin definedTypedefs:
                        definedTypedefs.incl t
                        tmp.add t.indent(IND)
            
            if tmp.len>0:
                xs.add "\n\ntype"
                xs.add "# typedefs found in the C++ code".indent(IND)
                xs.add tmp
        
        if true:
            var tmp:seq[string]
            tmp.outputEnums(file.module.enums, ClassData(), 0, "Global", addEnums=false, addConsts=true)
            for n,class in file.module.classes:
                tmp.outputEnums(class.enums, class, 0, class.nimName, addEnums=false, addConsts=true)
            
            if tmp.len>0:
                xs.add "\n# Consts"
                xs.add "const"
                xs.add tmp
        
        func addCallable(tmp:var seq[string], mm:CallableData) =
            if mm.name.len==0:
                # If mm.name.len==0, then we just want to write the suffix
                tmp.add mm.suffix
            elif mm.nim_signature notin definedProcs:
                var conditions:seq[string]
                if mm.lnx_signature in definedProcs_lnx: conditions.add "(not defined(linux))"
                if mm.bsd_signature in definedProcs_bsd: conditions.add "(not defined(bsd))"
                if mm.osx_signature in definedProcs_osx: conditions.add "(not defined(macosx))"
                if mm.win_signature in definedProcs_win: conditions.add "(not defined(windows))"
                if conditions.len>0: 
                    tmp.add "when "&conditions.join(" and ") & ":"
                    tmp.add "    " & mm.decl
                else:
                    tmp.add mm.decl

                definedProcs.incl mm.nim_signature
                definedProcs_lnx.incl mm.lnx_signature
                definedProcs_bsd.incl mm.bsd_signature
                definedProcs_osx.incl mm.osx_signature
                definedProcs_win.incl mm.win_signature

        xs.add ""
        for n,class in file.module.classes:
            var tmp:seq[string]
            if class.constructors.len>0:
                tmp.add (&"\n# Public constructors for {class.nimName}")
                for m in class.constructors:
                    for i in m.get_imports(class.allTypes, state):
                        if i notin imports:
                            tmp.add (&"import nimqt/{i}")
                            imports.incl i
                            
                    for mm in m.toNim(class,state):
                        tmp.addCallable(mm)
            
            if class.publicMethods.len>0:
                tmp.add (&"\n# Public methods for {class.nimName}")
                for m in class.publicMethods:
                    for i in m.get_imports(class.allTypes, state):
                        if i notin imports:
                            tmp.add (&"import nimqt/{i}")
                            imports.incl i
                            
                    for mm in m.toNim(class,Public,state):
                        tmp.addCallable(mm)
             
            if class.protectedMethods.len>0:
                tmp.add (&"\n# Protected methods methods for {class.nimName}")
                for m in class.protectedMethods:
                    for i in m.get_imports(class.allTypes, state):
                        if i notin imports:
                            tmp.add (&"import nimqt/{i}")
                            imports.incl i
                            
                    for mm in m.toNim(class,Protected,state):
                        tmp.addCallable(mm)
            
            if tmp.len>0:
                xs.add (&"# Stuff for class {class.nimName}") #.indent(IND)
                xs.add tmp
        
        xs.add ""
        #for i in file.module.headerExports: xs.add &"export {i.splitFile.name}"
        for i in imports: xs.add &"export {i.splitFile.name}"
        xs.add ""
        
    block:
        let id = &"{state.component}/{state.module}"
        if customization_footer.hasKey id:
            xs.add &"# Additional code for {id}"
            xs.add customization_footer[id].dedent

    result=xs.join("\n")

    block:
        let id = &"{state.component}/{state.module}"
        if customization_replaceInNimSource.hasKey id:
            for (search,repl) in customization_replaceInNimSource[id]:
                result = result.replace(re search, repl)
