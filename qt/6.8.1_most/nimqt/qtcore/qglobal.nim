const headerFile* = "QtCore/qglobal.h"

type
    # Classes found in the C++ code
    QMacAutoReleasePool* {.header:headerFile,importcpp:"QMacAutoReleasePool" ,pure,inheritable.} = object
    QTypeTraits_detail_Promoted*[T, U, ] {.header:headerFile,importcpp:"QTypeTraits::detail::Promoted" ,pure,inheritable.} = object


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

