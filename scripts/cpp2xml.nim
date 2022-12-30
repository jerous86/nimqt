import os
import sequtils
import strutils
import strformat
import tables
import parseopt

import clang

import paths

var args:seq[string]

var p = initOptParser(commandLineParams().join(" "))
for kind, key, val in p.getopt():
    case kind
    of cmdArgument: args.add key
    of cmdLongOption, cmdShortOption: assert(false)
    of cmdEnd: assert(false) # cannot happen

assert args.len==3
let 
    component=args[0]
    module=args[1]
    inputFilePath = args[2].replace("//","/")
    # compMod=(try: inputFilePath.split("/")[^2..^1].join("/") except: "")
    # compModLc=compMod.toLowerAscii

# Sources: 
# - https://shaharmike.com/cpp/libclang/
# - https://splunktool.com/using-libclang-to-parse-in-c-in-python
# - https://juliainterop.github.io/Clang.jl/stable/tutorial/
# - https://bastian.rieck.me/blog/posts/2015/baby_steps_libclang_ast/

# BUGS in clang:
# [1] qstring.h >>> [[nodiscard]] qsizetype indexOf(QStringView s, qsizetype from = 0, Qt::CaseSensitivity cs = Qt::CaseSensitive) const noexcept <<<
#         does not return the parameters. If we change return type qsizetype to int, then it works.
# [2]  qobject.h >>> void setObjectName(const QString &name) { doSetObjectName(name); } <<<
#           identifies this as a template_function with 1 nameless template_param.
#


proc `$`(s:CXString): string =
    let x=s.getCString
    result = $x
    s.disposeString

#proc info(c,parent:CXCursor): string = &"{getCursorKindSpelling(getCursorKind(c))} {c.sp} (Parent: {parent.sp}) (display: {c.dn})"
template ct*(x:untyped): CXType = x.getCursorType
template sp*(c:typed):string = $c.getCursorSpelling
template tksp*(c:typed):string = $c.getTypeKindSpelling
template tsp*(c:typed):string = $c.getTypeSpelling
template dn*(c:typed):string = $c.getCursorDisplayName
        #echo $c.ct
        #echo c.sp
        #echo c.ct.kind.tksp
        #echo c.ct.tsp
        #echo c.dn

func isForwardDeclaration(c:CXCursor):bool =
    let def=c.getCursorDefinition
    if equalCursors(def, getNullCursor()).int!=0: return true
    equalCursors(c, def).int==0
    
func xml_encode(s:string): string = s.replace("&", "&amp;").replace("\"", "&quot;")

func mkTag(tag:string, attrs:seq[(string,string)]): string =
    &"<{tag} " & attrs.mapIt(&"""{it[0]}="{it[1].xml_encode}" """).join(" ") & ">"
func mkTag(tag:string, attrs:Table[string,string]): string = mkTag(tag, attrs.pairs.toSeq)

func mkTag2(tag:string, attrs:seq[(string,string)]): string =
    &"<{tag} " & attrs.mapIt(&"""{it[0]}="{it[1].xml_encode}" """).join(" ") & " />"
    
func mkTag2(tag:string, attrs:Table[string,string]): string = mkTag2(tag, attrs.pairs.toSeq)
func closeTag(tag:string): string = &"</{tag}>"


func accessSpecifierToString(c:CXCursor): string =
    let x=c.getCXXAccessSpecifier
    case x
        of CX_CXXInvalidAccessSpecifier: "invalid"
        of CX_CXXPublic: "public"
        of CX_CXXProtected: "protected"
        of CX_CXXPrivate: "private"
    
var ns:seq[string]
var visibility = @["public"]
template h_continue() = (discard ns.pop; discard visibility.pop; return CXChildVisit_Continue)

func finalVisibility(vis:seq[string]): string =
    if "private" in vis: "private"
    elif "protected" in vis: "protected"
    else: "public"


template myEcho(s:string) = echo s.indent(ns.len*4)
template mkEnv(tag:string,attrs:Table[string,string], body:untyped) =
    myEcho mkTag(tag, attrs)
    body
    myEcho closeTag(tag)

proc handleMain2(c,parent:CXCursor, data:CXClientData):CXChildVisitResult =
    let location:CXSourceLocation = getCursorLocation(c);
    when true:
        var file:CXFile
        var line,column,offset:cuint
        location.getExpansionLocation(file.addr, line.addr, column.addr, offset.addr)

        # echo &"{file.getFileName} {inputFilePath} {location.Location_isFromMainFile.int.bool} {line} {column} {offset}"
        # This does not seem to work reliably
        # if not location.Location_isFromMainFile.int.bool: return CXChildVisit_Continue

        if $file.getFileName != inputFilePath: return CXChildVisit_Continue

    else:
        if location.Location_isFromMainFile.int == 0: return CXChildVisit_Continue
    
    let name = block:
        var res = $c.sp
        if res.startsWith("class "): res=res["class ".len..^1]
        if res.startsWith("struct "): res=res["struct ".len..^1]
        res
    let fullName = concat(ns, @[name]).join("::")
    ns.add name
    visibility.add visibility[^1]

    let defaultFields={"name":name, "full_name":fullname, "__vis__":visibility.finalVisibility}.toTable
    
    proc retType(c:CXCursor): string = c.ct.getResultType.tsp
    proc signature_args(c:CXCursor): string = (ns[0..^2].join("::") & "::" & c.dn).xml_encode
    proc signature_full(c:CXCursor): string = (ns[0..^2].join("::") & "::" & c.dn & " -> " & c.retType).xml_encode
    func merge(l,r:Table[string,string]): Table[string,string] =
        result=l
        for x,y in r: result[x]=y
        
    case c.getCursorKind
    of CXCursor_CompoundStmt: discard # Ignore implementations
    of CXCursor_FriendDecl: discard # We don't care about friends
    of CXCursor_CXXOverrideAttr, CXCursor_WarnUnusedResultAttr: discard
    of CXCursor_InitListExpr, CXCursor_UnexposedDecl,CXCursor_OverloadedDeclRef,
        CXCursor_BinaryOperator,CXCursor_NamespaceRef,CXCursor_CXXThisExpr,
        CXCursor_PackExpansionExpr,CXCursor_VisibilityAttr,CXCursor_NonTypeTemplateParameter,
        CXCursor_FirstAttr:
        discard c.visitChildren(handleMain2, data)

    of CXCursor_Namespace:
        mkEnv("namespace", defaultFields): discard c.visitChildren(handleMain2, data)
        
    of CXCursor_FunctionTemplate:
        mkEnv("function_template", defaultFields.merge({"full_name": c.signature_full, "ret_type":c.retType, "signature": c.signature_args,
            "is_pure_virtual": $c.CXXMethod_isPureVirtual.int,
            "is_virtual": $c.CXXMethod_isVirtual.int,
            "is_static": $c.CXXMethod_isStatic.int,
            "is_const": $c.CXXMethod_isConst.int,
            }.toTable)): discard c.visitChildren(handleMain2, data)
    of CXCursor_TypeAliasTemplateDecl:
        mkEnv("type_alias_template_decl", defaultFields): discard c.visitChildren(handleMain2, data)
        
    of CXCursor_Constructor:
        mkEnv("constructor", defaultFields.merge({"full_name": c.signature_full, "signature": c.signature_args,
            "is_copy_ctor": $c.CXXConstructor_isCopyConstructor.int,
            "is_default_ctor": $c.CXXConstructor_isDefaultConstructor.int
            }.toTable)): discard c.visitChildren(handleMain2, data)
    of CXCursor_Destructor:
        mkEnv("destructor", defaultFields.merge({"full_name": c.signature_full}.toTable)): discard c.visitChildren(handleMain2, data)
    of CXCursor_FunctionDecl:
        mkEnv("function", defaultFields.merge({"full_name": c.signature_full, "ret_type":c.retType, "signature": c.signature_args}.toTable)): discard c.visitChildren(handleMain2, data)
    of CXCursor_CXXMethod:
        mkEnv("method", defaultFields.merge({"full_name": c.signature_full, "ret_type":c.retType, "signature": c.signature_args,
            "is_pure_virtual": $c.CXXMethod_isPureVirtual.int,
            "is_virtual": $c.CXXMethod_isVirtual.int,
            "is_static": $c.CXXMethod_isStatic.int,
            "is_const": $c.CXXMethod_isConst.int,
            }.toTable)): discard c.visitChildren(handleMain2, data)
    of CXCursor_ConversionFunction:
        mkEnv("conversion_function", defaultFields.merge({"full_name": c.signature_full, "ret_type":c.retType, "signature": c.signature_args}.toTable)): discard c.visitChildren(handleMain2, data)
        
    of CXCursor_FirstExpr: 
        mkEnv("first_expr", defaultFields.merge({"x": $c, "y": $c.dn, "value2": $c.sp,"value3": $c.ct.kind.tksp,"value4": $c.ct.tsp,"value5": $c.dn,"value6": $c.sp,}.toTable)): discard c.visitChildren(handleMain2, data)        
    of CXCursor_TypeRef: 
        mkEnv("type_ref", defaultFields.merge({"x": $c, "y": $c.dn, "value": $c.ct.tsp}.toTable)): discard c.visitChildren(handleMain2, data)

    of CXCursor_TypedefDecl:
        myEcho mkTag2("type_def", defaultFields.merge({"alias_for": $c.getTypedefDeclUnderlyingType.getTypeSpelling}.toTable))
    of CXCursor_TypeAliasDecl:
        myEcho mkTag2("type_alias", defaultFields.merge({"alias_for": $c.getTypedefDeclUnderlyingType.getTypeSpelling}.toTable))
        
    of CXCursor_CXXBaseSpecifier:
        mkEnv("base_class", defaultFields): discard c.visitChildren(handleMain2, data)
    of CXCursor_StructDecl:
        if c.isForwardDeclaration: h_continue()
        visibility[^1]="public"
        mkEnv("class_decl", defaultFields.merge({"struct":"1"}.toTable)): discard c.visitChildren(handleMain2, data)
    of CXCursor_ClassDecl:
        if c.isForwardDeclaration: h_continue()
        visibility[^1]="private"
        mkEnv("class_decl", defaultFields.merge({"struct":"0"}.toTable)): discard c.visitChildren(handleMain2, data)
    of CXCursor_ClassTemplate:
        if c.isForwardDeclaration: h_continue()
        mkEnv("class_template", defaultFields): discard c.visitChildren(handleMain2, data)
    
    of CXCursor_EnumDecl:
        mkEnv("enum", defaultFields): discard c.visitChildren(handleMain2, data)
    
    of CXCursor_CallExpr:
        mkEnv("call_expr", defaultFields): discard c.visitChildren(handleMain2, data)
    of CXCursor_DeclRefExpr:
        mkEnv("decl_ref_expr", defaultFields): discard c.visitChildren(handleMain2, data)
    of CXCursor_MemberRef:
        mkEnv("member_ref", defaultFields): discard c.visitChildren(handleMain2, data)
    of CXCursor_MemberRefExpr:
        mkEnv("member_ref_expr", defaultFields): discard c.visitChildren(handleMain2, data)
    of CXCursor_ParmDecl: 
        mkEnv("param", {"name": $c.sp, "type": $c.getCursorType.tsp}.toTable): discard c.visitChildren(handleMain2, data)
    of CXCursor_UnaryOperator: 
        mkEnv("unary_op", defaultFields.merge({"op":"TODO"}.toTable)): discard c.visitChildren(handleMain2, data)
        
    of CXCursor_CXXAccessSpecifier:
        visibility[^2] = c.accessSpecifierToString
        myEcho mkTag2("access_specifier", {"value": c.accessSpecifierToString}.toTable)
    of CXCursor_TemplateTypeParameter: myEcho mkTag2("template_parameter", defaultFields)
    of CXCursor_UsingDeclaration: myEcho mkTag2("using", {"name": $c.sp, "type": $c.getCursorType.tsp}.toTable)
    of CXCursor_TemplateRef: myEcho mkTag2("template_ref", defaultFields)
    of CXCursor_FieldDecl: myEcho mkTag2("field_decl", defaultFields.merge({"type": $(c.ct.tsp), "bit_width": $c.getFieldDeclBitWidth}.toTable))
    of CXCursor_VarDecl: myEcho mkTag2("var_decl", defaultFields.merge({"type": $(c.ct.tsp), "bit_width": $c.getFieldDeclBitWidth}.toTable))
    of CXCursor_EnumConstantDecl: myEcho mkTag2("enum_value", @[("name", $c.sp), ("value", $c.getEnumConstantDeclValue)])
    
    of CXCursor_IntegerLiteral: myEcho mkTag2("value", @[("value", $c.Cursor_Evaluate.EvalResult_getAsInt)])
    of CXCursor_CXXBoolLiteralExpr: myEcho mkTag2("value", @[("value", $bool(c.Cursor_Evaluate.EvalResult_getAsInt))])
    of CXCursor_CXXNullPtrLiteralExpr: myEcho mkTag2("value", @[("value", "nullptr")])
    
    else:
        mkEnv("MISSING_" & $c.getCursorKind, {"name": $c.sp}.toTable):
            discard visitChildren(c, handleMain2, nil)
    h_continue()
    
{.passL: paths.replace_vars("-L${LLVM_lib_dir} -lclang ", allow_run_time=false).}
var clangArgs:seq[string]
clangArgs.add @["-std=c++17", "-D", "__PIC__=2"]
# We need the "-x c++-header" to force it to parse like a cpp file ...
clangArgs.add @["-x", "c++-header"] 
clangArgs.add @["-D", "Q_QDOC"] 
when defined(macosx):
    # on OSX we also need to add the path to the folder containing the frameworks
    # https://forum.qt.io/topic/141436/qt-6-4-1-on-macos-where-are-the-qtwidgets-header-files/2
    clangArgs.add @["-F", paths.replace_vars("${Qt_root}", allow_run_time=true)]

var index = createIndex(0,0)

# echo clangArgs.join(" ")
var unit = parseTranslationUnit(index, inputFilePath.cstring, clangArgs.allocCStringArray, clangArgs.len.cint, nil, 0, CXTranslationUnit_None.cuint);
assert(unit != nil, "Failed to parse "&inputFilePath)

var cursor = getTranslationUnitCursor(unit)

mkEnv("file", {"name":inputFilePath, "component":component, "module":module}.toTable):
    discard visitChildren(cursor, handleMain2, nil)

disposeTranslationUnit(unit);
disposeIndex(index);
