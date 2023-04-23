const headerFile* = "QtCore/qglobal.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        QMacAutoReleasePool* {.header:headerFile,importcpp:"QMacAutoReleasePool" ,pure.} = object {.inheritable.}
        QTypeTraits_detail_Promoted*[T, U, ] {.header:headerFile,importcpp:"QTypeTraits::detail::Promoted" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        QMacAutoReleasePool* {.header:headerFile,importcpp:"QMacAutoReleasePool" ,pure,inheritable.} = object
        QTypeTraits_detail_Promoted*[T, U, ] {.header:headerFile,importcpp:"QTypeTraits::detail::Promoted" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}


type
    # typedefs found in the C++ code
    qint8 * = char
    quint8 * = char
    qint16 * = cshort
    quint16 * = cushort
    qint32 * = cint
    quint32 * = cuint
    qint64 * = clonglong
    quint64 * = culonglong
    qlonglong * = clonglong
    qulonglong * = culonglong
    uchar * = char
    ushort * = cushort
    uint * = cuint
    ulong * = culong
    qreal * = cdouble

# Stuff for class QMacAutoReleasePool

# Public constructors for QMacAutoReleasePool
proc newQMacAutoReleasePool*(): QMacAutoReleasePool {. header:headerFile, importcpp:"QMacAutoReleasePool(@)", constructor .} #
