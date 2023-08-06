const headerFile* = "QtCore/qmessageauthenticationcode.h"

type
    # Classes found in the C++ code
    QMessageAuthenticationCode* {.header:headerFile,importcpp:"QMessageAuthenticationCode" ,pure,inheritable.} = object

# Stuff for class QMessageAuthenticationCode

# Public constructors for QMessageAuthenticationCode
import nimqt/qtcore/qbytearray
import nimqt/qtcore/qcryptographichash
# 1 default parameters!
proc newQMessageAuthenticationCode*(`method`: QCryptographicHash_Algorithm, key: QByteArray): QMessageAuthenticationCode {. header:headerFile, importcpp:"QMessageAuthenticationCode(@)", constructor .} #
proc newQMessageAuthenticationCode*(`method`: QCryptographicHash_Algorithm): QMessageAuthenticationCode {. header:headerFile, importcpp:"QMessageAuthenticationCode(@)", constructor .} #

# Public methods for QMessageAuthenticationCode
proc reset*(this: QMessageAuthenticationCode) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc setKey*(this: QMessageAuthenticationCode, key: QByteArray) {.header:headerFile, importcpp:"#.setKey(@)".} # Public
proc addData*(this: QMessageAuthenticationCode, data: ptr char, length: cint) {.header:headerFile, importcpp:"#.addData(@)".} # Public
proc addData*(this: QMessageAuthenticationCode, data: QByteArray) {.header:headerFile, importcpp:"#.addData(@)".} # Public
import nimqt/qtcore/qiodevice
proc addData*(this: QMessageAuthenticationCode, device: ptr QIODevice): bool {.header:headerFile, importcpp:"#.addData(@)".} # Public
proc result*(this: QMessageAuthenticationCode): QByteArray {.header:headerFile, importcpp:"#.result(@)".} # Public
proc static_QMessageAuthenticationCode_hash*(message: QByteArray, key: QByteArray, `method`: QCryptographicHash_Algorithm): QByteArray {.header:headerFile, importcpp:"QMessageAuthenticationCode::hash(@)".} # Public static

export qbytearray
export qcryptographichash
export qiodevice
