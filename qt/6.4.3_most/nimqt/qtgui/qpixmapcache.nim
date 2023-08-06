const headerFile* = "QtGui/qpixmapcache.h"

type
    # Classes found in the C++ code
    QPixmapCache* {.header:headerFile,importcpp:"QPixmapCache" ,pure,inheritable.} = object
    QPixmapCache_Key* {.header:headerFile,importcpp:"QPixmapCache::Key" ,pure,inheritable.} = object

# Stuff for class QPixmapCache

# Public methods for QPixmapCache
proc static_QPixmapCache_cacheLimit*(): cint {.header:headerFile, importcpp:"QPixmapCache::cacheLimit(@)".} # Public static
proc static_QPixmapCache_setCacheLimit*(arg_0: cint) {.header:headerFile, importcpp:"QPixmapCache::setCacheLimit(@)".} # Public static
import nimqt/qtgui/qpixmap
import nimqt/qtcore/qstring
proc static_QPixmapCache_find*(key: QString, pixmap: ptr QPixmap): bool {.header:headerFile, importcpp:"QPixmapCache::find(@)".} # Public static
proc static_QPixmapCache_find*(key: QPixmapCache_Key, pixmap: ptr QPixmap): bool {.header:headerFile, importcpp:"QPixmapCache::find(@)".} # Public static
proc static_QPixmapCache_insert*(key: QString, pixmap: QPixmap): bool {.header:headerFile, importcpp:"QPixmapCache::insert(@)".} # Public static
proc static_QPixmapCache_insert*(pixmap: QPixmap): QPixmapCache_Key {.header:headerFile, importcpp:"QPixmapCache::insert(@)".} # Public static
proc static_QPixmapCache_replace*(key: QPixmapCache_Key, pixmap: QPixmap): bool {.header:headerFile, importcpp:"QPixmapCache::replace(@)".} # Public static
proc static_QPixmapCache_remove*(key: QString) {.header:headerFile, importcpp:"QPixmapCache::remove(@)".} # Public static
proc static_QPixmapCache_remove*(key: QPixmapCache_Key) {.header:headerFile, importcpp:"QPixmapCache::remove(@)".} # Public static
proc static_QPixmapCache_clear*() {.header:headerFile, importcpp:"QPixmapCache::clear(@)".} # Public static
# Stuff for class QPixmapCache_Key

# Public constructors for QPixmapCache_Key
proc newQPixmapCache_Key*(): QPixmapCache_Key {. header:headerFile, importcpp:"QPixmapCache_Key(@)", constructor .} #
proc newQPixmapCache_Key*(other: QPixmapCache_Key): QPixmapCache_Key {. header:headerFile, importcpp:"QPixmapCache_Key(@)", constructor .} #

# Public methods for QPixmapCache_Key
proc `!=`*(this: QPixmapCache_Key, key: QPixmapCache_Key): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc swap*(this: QPixmapCache_Key, other: QPixmapCache_Key) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc isValid*(this: QPixmapCache_Key): bool {.header:headerFile, importcpp:"#.isValid(@)".} # Public

export qpixmap
export qstring
