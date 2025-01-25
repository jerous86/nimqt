const headerFile* = "QtCore/qmimedata.h"

import nimqt/qtcore/qobject
type
    # Classes found in the C++ code
    QMimeData* {.header:headerFile,importcpp:"QMimeData" ,pure.} = object of QObject

# Stuff for class QMimeData

# Public constructors for QMimeData
proc newQMimeData*(): ptr QMimeData {. header:headerFile, importcpp:"new QMimeData(@)" .} #

# Public methods for QMimeData
import nimqt/qtcore/qstring
# 1 default parameters!
proc static_QMimeData_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QMimeData::tr(@)".} # Public static
proc static_QMimeData_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QMimeData::tr(@)".} # Public static
import nimqt/qtcore/qurl
import nimqt/qtcore/qlist
proc urls*(this: ptr QMimeData): QList[QUrl] {.header:headerFile, importcpp:"#.urls(@)".} # Public
proc setUrls*(this: ptr QMimeData, urls: QList[QUrl]) {.header:headerFile, importcpp:"#.setUrls(@)".} # Public
proc hasUrls*(this: ptr QMimeData): bool {.header:headerFile, importcpp:"#.hasUrls(@)".} # Public
proc text*(this: ptr QMimeData): QString {.header:headerFile, importcpp:"#.text(@)".} # Public
proc setText*(this: ptr QMimeData, text: QString) {.header:headerFile, importcpp:"#.setText(@)".} # Public
proc hasText*(this: ptr QMimeData): bool {.header:headerFile, importcpp:"#.hasText(@)".} # Public
proc html*(this: ptr QMimeData): QString {.header:headerFile, importcpp:"#.html(@)".} # Public
proc setHtml*(this: ptr QMimeData, html: QString) {.header:headerFile, importcpp:"#.setHtml(@)".} # Public
proc hasHtml*(this: ptr QMimeData): bool {.header:headerFile, importcpp:"#.hasHtml(@)".} # Public
import nimqt/qtcore/qvariant
proc imageData*(this: ptr QMimeData): QVariant {.header:headerFile, importcpp:"#.imageData(@)".} # Public
proc setImageData*(this: ptr QMimeData, image: QVariant) {.header:headerFile, importcpp:"#.setImageData(@)".} # Public
proc hasImage*(this: ptr QMimeData): bool {.header:headerFile, importcpp:"#.hasImage(@)".} # Public
proc colorData*(this: ptr QMimeData): QVariant {.header:headerFile, importcpp:"#.colorData(@)".} # Public
proc setColorData*(this: ptr QMimeData, color: QVariant) {.header:headerFile, importcpp:"#.setColorData(@)".} # Public
proc hasColor*(this: ptr QMimeData): bool {.header:headerFile, importcpp:"#.hasColor(@)".} # Public
import nimqt/qtcore/qbytearray
proc data*(this: ptr QMimeData, mimetype: QString): QByteArray {.header:headerFile, importcpp:"#.data(@)".} # Public
proc setData*(this: ptr QMimeData, mimetype: QString, data: QByteArray) {.header:headerFile, importcpp:"#.setData(@)".} # Public
proc removeFormat*(this: ptr QMimeData, mimetype: QString) {.header:headerFile, importcpp:"#.removeFormat(@)".} # Public
proc hasFormat*(this: ptr QMimeData, mimetype: QString): bool {.header:headerFile, importcpp:"#.hasFormat(@)".} # Public
import nimqt/qtcore/qstringlist
proc formats*(this: ptr QMimeData): QStringList {.header:headerFile, importcpp:"#.formats(@)".} # Public
proc clear*(this: ptr QMimeData) {.header:headerFile, importcpp:"#.clear(@)".} # Public

export qstringlist
export qurl
export qstring
export qbytearray
export qlist
export qvariant
export qobject
