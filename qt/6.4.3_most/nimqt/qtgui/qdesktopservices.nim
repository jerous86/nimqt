const headerFile* = "QtGui/qdesktopservices.h"

type
    # Classes found in the C++ code
    QDesktopServices* {.header:headerFile,importcpp:"QDesktopServices" ,pure,inheritable.} = object

# Stuff for class QDesktopServices

# Public methods for QDesktopServices
import nimqt/qtcore/qurl
proc static_QDesktopServices_openUrl*(url: QUrl): bool {.header:headerFile, importcpp:"QDesktopServices::openUrl(@)".} # Public static
import nimqt/qtcore/qstring
import nimqt/qtcore/qobject
proc static_QDesktopServices_setUrlHandler*(scheme: QString, receiver: ptr QObject, `method`: ptr char) {.header:headerFile, importcpp:"QDesktopServices::setUrlHandler(@)".} # Public static
proc static_QDesktopServices_unsetUrlHandler*(scheme: QString) {.header:headerFile, importcpp:"QDesktopServices::unsetUrlHandler(@)".} # Public static

export qurl
export qstring
export qobject
