const headerFile* = "QtCore/qcryptographichash.h"

type
    # Enums found in the C++ code
    # Global
    QCryptographicHash_Algorithm* {.header:headerFile,importcpp:"QCryptographicHash::Algorithm".} = enum Md4 = 0, Md5 = 0x1, Sha1 = 0x2, Sha224 = 0x3, 
        Sha256 = 0x4, Sha384 = 0x5, Sha512 = 0x6, Keccak_224 = 0x7, Keccak_256 = 0x8, 
        Keccak_384 = 0x9, Keccak_512 = 0xa, RealSha3_224 = 0xb, RealSha3_256 = 0xc, RealSha3_384 = 0xd, 
        RealSha3_512 = 0xe, Blake2b_160 = 0xf, Blake2b_256 = 0x10, Blake2b_384 = 0x11, Blake2b_512 = 0x12, 
        Blake2s_128 = 0x13, Blake2s_160 = 0x14, Blake2s_224 = 0x15, Blake2s_256 = 0x16

type
    # Classes found in the C++ code
    QCryptographicHash* {.header:headerFile,importcpp:"QCryptographicHash" ,pure,inheritable.} = object

# Consts
const
    # Global
    QCryptographicHash_AlgorithmSha3_224* = 11 # from anonymous enum RealSha3_224
    QCryptographicHash_AlgorithmSha3_256* = 12 # from anonymous enum RealSha3_256
    QCryptographicHash_AlgorithmSha3_384* = 13 # from anonymous enum RealSha3_384
    QCryptographicHash_AlgorithmSha3_512* = 14 # from anonymous enum RealSha3_512

# Stuff for class QCryptographicHash

# Public constructors for QCryptographicHash
proc newQCryptographicHash*(`method`: QCryptographicHash_Algorithm): QCryptographicHash {. header:headerFile, importcpp:"QCryptographicHash(@)", constructor .} #

# Public methods for QCryptographicHash
proc qt_check_for_QGADGET_macro*(this: QCryptographicHash) {.header:headerFile, importcpp:"#.qt_check_for_QGADGET_macro(@)".} # Public
proc reset*(this: QCryptographicHash) {.header:headerFile, importcpp:"#.reset(@)".} # Public
proc addData*(this: QCryptographicHash, data: ptr char, length: cint) {.header:headerFile, importcpp:"#.addData(@)".} # Public
import nimqt/qtcore/qbytearrayview
proc addData*(this: QCryptographicHash, data: QByteArrayView) {.header:headerFile, importcpp:"#.addData(@)".} # Public
import nimqt/qtcore/qiodevice
proc addData*(this: QCryptographicHash, device: ptr QIODevice): bool {.header:headerFile, importcpp:"#.addData(@)".} # Public
import nimqt/qtcore/qbytearray
proc result*(this: QCryptographicHash): QByteArray {.header:headerFile, importcpp:"#.result(@)".} # Public
proc resultView*(this: QCryptographicHash): QByteArrayView {.header:headerFile, importcpp:"#.resultView(@)".} # Public
proc static_QCryptographicHash_hash*(data: QByteArrayView, `method`: QCryptographicHash_Algorithm): QByteArray {.header:headerFile, importcpp:"QCryptographicHash::hash(@)".} # Public static
proc static_QCryptographicHash_hashLength*(`method`: QCryptographicHash_Algorithm): cint {.header:headerFile, importcpp:"QCryptographicHash::hashLength(@)".} # Public static

export qbytearrayview
export qbytearray
export qiodevice
