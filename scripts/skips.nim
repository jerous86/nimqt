import xmltree
import tables
import nre
import sequtils
import strformat
import strutils

type MatchType* = enum
    Ctor,
    Method,
    Function,
    Enum,
    Class,
    Alias,
    Namespace,
    DerivedAlias, # This is an alias that we created ourselves
func toString*(mt:MatchType): string = ($mt).toLowerAscii

type CompMod* = tuple[component,module:string]
func newCm*(c,m:string): CompMod = (component:c, module:m)
func cmFromStr*(str:string): CompMod = (let pts=str.split("/"); assert(pts.len==2); (component:pts[0], module:pts[1]))

# I choose " -> " as a separator, as it looks nice, and easy to split without regexes (regex is not possible in the VM,
# and pegs are too slow).
func id_mod(cm:CompMod): string = &"{cm.component.toLowerAscii}/{cm.module.toLowerAscii}"
func id(cm:CompMod, mt:MatchType, rest:string): string = &"{cm.id_mod} -> {mt.toString} -> {rest}"

func id_ctor*(cm:CompMod, class,signature:string): string = id(cm, Ctor, &"{class} -> {signature}")
func id_method*(cm:CompMod, name,signature,ret_type:string): string = id(cm, Method, &"{name} -> {signature} -> {ret_type}")
func id_function*(cm:CompMod, name,signature,ret_type:string): string = id(cm, Function, &"{name} -> {signature} -> {ret_type}")
func id_enum*(cm:CompMod, name:string): string = id(cm, Enum, name)
func id_class*(cm:CompMod, name:string): string = id(cm, Class, name)
func id_alias*(cm:CompMod, name,alias_for:string): string = id(cm, Alias, &"{name} -> {alias_for}")
func id_derived_alias*(cm:CompMod, name,alias_for:string): string = id(cm, DerivedAlias, &"{name} -> {alias_for}")
func id_namespace*(cm:CompMod, namespace:string): string = id(cm, Namespace, &"{namespace}")

const skipRules* = @[
    "(__CFString|CFStringRef)",
    "(__CFURL|NSURL|CFURLRef)",
    "(__CFDate|CFDateRef)",
    "(__CFTimeZone|NSTimeZone|CFTimeZoneRef)",
    "(CFArrayRef|__CFArray)",
    "(CFDataRef|__CFData)",
    "(CFNumberRef|__CFNumber)",
    "(CFDictionaryRef|__CFDictionary)",
    "(CFLocaleRef|__CFLocale)",
    "(CFBooleanRef|__CFBoolean)",
    "(CFErrorRef|__CFError)",
    "(CFBundleRef|__CFBundle)",
    "(CGPathRef|CGPath)",
    "(CGColorSpaceRef|CGColorSpace)",
    "(CGImageRef|CGImage)",
    "(CGFontRef|CGFont)",
    "(CGColorRef|CGColor)",
    "(NSString|NSDate)",
    "(CGSize|CGPoint|CGRect)",
    "(NSUUID|__CFUUID|CFUUIDRef)",
    "(NSMenu)",
    "(NSView)",
    "WId",
    "objc_object",
    "va_list",
    "wchar_t",
    "wstring",
    "u(16|32)string",
    
    "qtcore/qatomic_msvc",
    "qtcore/qcontainerfwd",
    "qtcore/qfloat16",
    "qtcore/qtypeinfo",
    "qtcore/qcbor.*",
    "qtcore/qmetaobject", ".*QMetaObject.*",
    "QMetaMethod",
    "QMetaEnum",
    "TimerInfo",
    "QException", "Exception", "exception",

    "qtcore/.*_impl ",
    "qtcore/.*QWidget", # makes processing easier
    "[Ii]terator",
    "alias .*Iterator",
    "initializer_list",
    "std_",
    "qt_meta(cast|call)",
    "QPointF?_toCGPoint",
    "QList.*DataPointer", 
    "QList_MemoryLayout", "QList_Node",
    
    "qtcore/qvariant .*convert",
    "qtcore/qmap alias QMap_Node",
    "qtcore/qthread.*[eE]ventDispatcher", 
    "QGlobalStatic_Type",
    "QFunctionPointer",
    "QLinkedList_Node",
    
    "qtcore/qmutex.*try_lock",
    "QRandomGenerator64_result_type",
    "QRandomGenerator_System",
    "QSettings_ReadFunc",
    
    "QSharedDataPointer_Type",
    "QExplicitlySharedDataPointer_Type",
    "QState",
    "qtcore/qstatemachine",
    
    "qtcore/qlist.*(QListSpecialMethodsBase|QListSpecialMethods|QListIterator|QMutableListIterator)",
    "+class QArrayDataPointer",
    "QArrayDataPointer",
    # "alias QList",
    "qInternalCallback",
    "QTypeInfo",
    "Zero",
    "HANDLE",
    "qtcore/qsocketnotifier.*DescriptorType", # refers to HANDLE
    "QTypedArrayData",
    
    "QStringData",
    "qtcore/qlist .*QListData",
    "QStringView",
    "QString.*Null",
    "qtcore/qstring.*split",
    "qtcore/qstringbuilder",
    
    "qtcore/qhash.*QHashData",
    "qtcore/qendian",
    "QtGadgetHelper",
    "QEasingCurve_EasingFunction",
    "qtcore/qvariantanimation.*KeyValue", # QPair
    
    "DataPtr",
    "QTextStreamFunction",
    "Interpolator",
    "size_type",
    
    "qtcore/qhash.*Node",
    "qtcore/qset.*Hash",
    "qtcore/q.*atomic",
    "qtcore/qfutureinterface.*reportResults",
    
    # Avoid circular dependencies
    "qtcore/qobject.*QThread",
    "qtcore/qchar.*QString",
    "qtcore/qvariant.*(QModelIndex|QPersistentModelIndex)",
    "qtcore/qabstractstate.*(parentState|machine)",
    "qtcore/qabstractanimation.*QAnimationGroup",
    "qtcore/qvariant.*QDataStream",

    "QArrayDataOps",
    
    "QStaticByteArrayMatcher",
    "QCache_Node",
    
    "nullptr_t",

    # These cause some problems with overloaded functions.
    "QCharRef",
    "QBitRef",
    "QByteRef",
    "QArrayDataPointerRef",
    "QJsonValueRef",
    "QStringRef",
    "QXmlStreamStringRef",
    
    "qtcore/qbytearray.*Data",
    "qtcore/qbytearray.*QString", # resolves some circular dependency
    newCm("qtcore","q(bit|byte)array").id_method(".*",".*","QByteRef"), # avoid ambiguous calls
    
    # Fixes some parsing issues
    "QVariantList",
    # id_alias("qtcore","qjsonarray","QVariantList",""),
    newCm("qtcore","qmetatype").id_alias("QByteArrayList",""),
    
    "FromBase64Result",
    # id_alias(".*", ".*", ".*(parameter_type|first_type|second_type|mapped_type|key_type|const_pointer|const_reference|difference_type|rvalue_ref|reference)", ""),
    "difference_type|quintptr|qptrdiff",
    "operator=",  # TODO add exceptional handling for this?
    "operator\\(\\)",
    "qtcore/qflags.*enum_type",
    "qtcore/qtypeinfo.*QFlags", # clashes with qtcore/qflags
    newCm("qtcore","qurl").id_class("QUrl_QFlags"), # clashes with qtcore/qflags
    "QLoggingCategory",
    newCm("qtcore","qurlquery").id_method(".*ueryItems",".*",".*"), # TODO fix QList<QPair<str,str>>
    # Private api stuff
    "QPostEventList", 
    "QPrivate", "QtPrivate", "private", "Private", "qtprivate",
    "CategoryFunction",
    
    newCm("qtcore","qcoreapplication").id_alias("(QtCleanUpFunction|QtStartUpFunction)",""),
    "QContiguousCache_Data",
    
    "QIntegerForSize",
    "QFlags_Int",
    
    "QTextStreamManipulator",
    
    "QChar_Category",
    
    # Exceptions while doing qtgui stuff
    "QPlatform",
    "QOpenGLPixelTransferOptions",
    "QTextEngine",
    "qtgui/qopengl",
    "+qtgui/qaccessible -> (class|enum|alias)", "qtgui/qaccessible .*",
    "QImageCleanupFunction",
    "qtgui/.*io_handler",
    "QGraphicsEffectSource",
    "QPair",
    "qtgui/qicon.*QWindow",
    "qtgui/qbrush.*QGradientStop",

    newCm("qtgui","qpixmap").id_ctor("QPixmap",".*const"),
    newCm("qtgui","qimage").id_ctor("QImage",".*const"),
    
    # Fix some stuff in our parsing -- this is a instantiation of a QList probably
    "qtgui/.* class QList",
    
    # Avoiding circular imports
    "qtgui/qpicture.*QPaintEngine",
    "qtgui/qpaintdevice.*QPaintEngine",
    "qtgui/qpaintdevice.*QPainter",
    "qtgui/qregion.*QBitmap",
    "qtgui/qpixmap.*QBitmap",
    "qtgui/qtextcursor .*(QTextList|QTextTable)",
    newCm("qtgui","qgenericmatrix").id_alias("QMatrix[0-9]x[0-9]",".*"),
    "QMatrix3x3",
    "qtgui/qtextobject.*QTextList",

    # QML
    newCm("qtqml","qjsengine").id_method("handle",".*",".*"),
    "qtqml/qqmlcomponent.*statusChanged", # references a private enum!
    "QQmlV4Function",
    "QNetworkAccessManager",
    "QMetaProperty",
    
    # Exceptions while doing qtwidgets stuff
    "+qtwidgets/qaccessiblewidget -> (class|enum|alias)", "qtwidgets/qaccessiblewidget .*",
    "+qtwidgets/qgraphicsscene -> (class|enum|alias)", "qtwidgets/qgraphicsscene .*",
    "+qtwidgets/qgraphics.*(class|enum|alias)", "qtwidgets/qgraphics.*",
    "+qtwidgets/qgraphicsproxywidge (class|enum|alias)", "qtwidgets/qgraphicsproxywidge .*",
    "qtwidgets/qopengl",
    "qtwidgets/qstyle.*QApplication",
    "qtwidgets/qstyleoption .*",
    "qtwidgets/qaction .*QMenu",
    newCm("qtwidgets","qlayoutitem").id_method("(widget|newQWidgetItem|newQWidgetItemV2|layout)",".*",".*"),
    newCm("qtwidgets","qlayoutitem").id_ctor("(QWidgetItem|QWidgetItemV2)",".*"),
    "QStyleOption",

    # When switching from qt5 to qt6, these classes caused some trouble.
    # So, for now, I just skipped them completely ...
    "QMetaType",
    "QUntypedPropertyData",
    "QUtf8StringView",
    "QVariantMap",
    "QVariantHash",
    "QMapData",
    "QProperty",
    "QObjectBindableProperty", "QObjectComputedProperty",
    "QPropertyData",
    "QUntypedPropertyData",
    "qtcore/qstring .*DataPointer",
    "QStringTokenizer",
    "QBasicUtf8StringView",
    "qtcore/qvarlengtharray ",
    "QTextDocument_ResourceProvider",
    "Affine",
    "QList_pointer",
    "HRGN",
    "HBITMAP",
    "HICON",
    "QList_Type",
    "fromUcs4", # bug in clang where it returns R instead of QChar ... (possibly due to auto keyword ...)
    "ApplicationHolder", "Holder",
    newCm("qtcore","qfutureinterface").id_ctor("QFutureInterface",".*QFutureInterfaceBase"),
    "qtcore/qfutureinterface.*canceledResult", # type specialisation ... ugh
    newCm("qtcore","qfutureinterface").id_method("future",".*",".*"), # type specialisation ... ugh
    "QCborSimpleType",
    "QtPluginInstanceFunction",
    "+"&newCm("qtcore","qstringconverter").id_class("QStringConverterBase"),
    "qstringconverter","QStringConverter",
    ".*qaccessible.*",
    ".*qvulkan.*",
    "+.*setLocale.*",
    "+"&newCm(".*",".*").id_method("(read|write)",".*",".*"),
    "+QTree.*(setCurrentItem|setSelectionModel|setSelection|selectionChanged).*",
    ]

# E.g. QAccessible::Event is an enum, while QAccessibleEvent is a class.
# In the code, we replace QAccessible::Event with QAccessible_Event.
# However, in nim, underscores are removed from the identifier, and hence
# we get two identical types that clash. This const
# helps to define these special cases.
const typeReplacements* = {
    "QAccessible_Event": "eQAccessible_Event",
    "QOperatingSystemVersion_OSType": "eQOperatingSystemVersion_OSType",
    "QStringConverter_Flag": "eQStringConverter_Flag",
    }.toTable
func replaceSpecialTypes*(t:string): string =
    if typeReplacements.hasKey(t): typeReplacements[t]
    else: t

func skippable*(s:string, cm:CompMod, matchType:MatchType, debugLevel:int=0): bool =
    let rules:seq[(bool,nre.Regex)] = skipRules.mapIt((it[0]!='+', nre.re (if it[0]=='+': it[1..^1] else: it)))
    let finalId=cm.id(matchType, s)
    result=false
    for i,(skipIfMatch,rgx) in rules:
        if finalId.find(rgx).isSome:
            result=skipIfMatch
            if debugLevel>=1: debugEcho &"{matchType} '{s}' --> {result} due to rule '{skipRules[i]}'"
            break
        else:
            if debugLevel>=2: debugEcho &"{matchType} '{s}' does not match '{skipRules[i]}', so ignoring it!"
    if debugLevel>=1: debugEcho &"{matchType} '{s}' --> FINAL RESULT: {result}"

when false:
    var component*,module*:string
    proc id_ctor*(class,signature:string): string = id_ctor(component, module, class, signature)
    proc id_method*(name,signature,ret_type:string): string = id_method(component, module, name, signature, ret_type)
    proc id_function*(name,signature,ret_type:string): string = id_function(component, module, name, signature, ret_type)
    proc id_enum*(name:string): string = id_enum(component, module, name)
    proc id_class*(name:string): string = id_class(component, module, name)
    proc id_alias*(name,alias_for:string): string = id_alias(component, module, name, alias_for)
    proc id_namespace*(namespace:string): string = id_namespace(component, module, namespace)
    proc id_derived_alias*(name,alias_for:string): string = id_derived_alias(component, module, name, alias_for)
    proc skippable*(s:string, matchType:MatchType, debug:bool=false): bool = skippable(component,module, s, matchType, debug)

func isVisible*(x:XmlNode):bool =  x.attr("__vis__") in ["public","protected"]
        
