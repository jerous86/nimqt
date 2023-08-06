const headerFile* = "QtCore/qprocess.h"

type
    # Enums found in the C++ code
    # Global
    QProcessEnvironment_Initialization* {.header:headerFile,importcpp:"QProcessEnvironment::Initialization".} = enum InheritFromParent = 0
    QProcess_ProcessError* {.header:headerFile,importcpp:"QProcess::ProcessError".} = enum FailedToStart = 0, Crashed = 0x1, Timedout = 0x2, ReadError = 0x3, 
        WriteError = 0x4, UnknownError = 0x5
    QProcess_ProcessState* {.header:headerFile,importcpp:"QProcess::ProcessState".} = enum NotRunning = 0, Starting = 0x1, Running = 0x2
    QProcess_ProcessChannel* {.header:headerFile,importcpp:"QProcess::ProcessChannel".} = enum StandardOutput = 0, StandardError = 0x1
    QProcess_ProcessChannelMode* {.header:headerFile,importcpp:"QProcess::ProcessChannelMode".} = enum SeparateChannels = 0, MergedChannels = 0x1, ForwardedChannels = 0x2, ForwardedOutputChannel = 0x3, 
        ForwardedErrorChannel = 0x4
    QProcess_InputChannelMode* {.header:headerFile,importcpp:"QProcess::InputChannelMode".} = enum ManagedInputChannel = 0, ForwardedInputChannel = 0x1
    QProcess_ExitStatus* {.header:headerFile,importcpp:"QProcess::ExitStatus".} = enum NormalExit = 0, CrashExit = 0x1

import nimqt/qtcore/qiodevice
type
    # Classes found in the C++ code
    QProcessEnvironment* {.header:headerFile,importcpp:"QProcessEnvironment" ,pure,inheritable.} = object
    QProcess* {.header:headerFile,importcpp:"QProcess" ,pure.} = object of QIODevice
import nimqt/qtcore/qiodevicebase


type
    # typedefs found in the C++ code
    QProcess_OpenModeFlag * = QIODeviceBase_OpenModeFlag
    QProcess_OpenMode * = QIODeviceBase_OpenMode

# Stuff for class QProcessEnvironment

# Public constructors for QProcessEnvironment
proc newQProcessEnvironment*(): QProcessEnvironment {. header:headerFile, importcpp:"QProcessEnvironment(@)", constructor .} #
proc newQProcessEnvironment*(arg_0: QProcessEnvironment_Initialization): QProcessEnvironment {. header:headerFile, importcpp:"QProcessEnvironment(@)", constructor .} #
proc newQProcessEnvironment*(other: QProcessEnvironment): QProcessEnvironment {. header:headerFile, importcpp:"QProcessEnvironment(@)", constructor .} #

# Public methods for QProcessEnvironment
proc swap*(this: QProcessEnvironment, other: QProcessEnvironment) {.header:headerFile, importcpp:"#.swap(@)".} # Public
proc `!=`*(this: QProcessEnvironment, other: QProcessEnvironment): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
proc isEmpty*(this: QProcessEnvironment): bool {.header:headerFile, importcpp:"#.isEmpty(@)".} # Public
proc inheritsFromParent*(this: QProcessEnvironment): bool {.header:headerFile, importcpp:"#.inheritsFromParent(@)".} # Public
proc clear*(this: QProcessEnvironment) {.header:headerFile, importcpp:"#.clear(@)".} # Public
import nimqt/qtcore/qstring
proc contains*(this: QProcessEnvironment, name: QString): bool {.header:headerFile, importcpp:"#.contains(@)".} # Public
proc insert*(this: QProcessEnvironment, name: QString, value: QString) {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc remove*(this: QProcessEnvironment, name: QString) {.header:headerFile, importcpp:"#.remove(@)".} # Public
# 1 default parameters!
proc value*(this: QProcessEnvironment, name: QString, defaultValue: QString): QString {.header:headerFile, importcpp:"#.value(@)".} # Public
proc value*(this: QProcessEnvironment, name: QString): QString {.header:headerFile, importcpp:"#.value(@)".} # Public
import nimqt/qtcore/qstringlist
proc toStringList*(this: QProcessEnvironment): QStringList {.header:headerFile, importcpp:"#.toStringList(@)".} # Public
proc keys*(this: QProcessEnvironment): QStringList {.header:headerFile, importcpp:"#.keys(@)".} # Public
proc insert*(this: QProcessEnvironment, e: QProcessEnvironment) {.header:headerFile, importcpp:"#.insert(@)".} # Public
proc static_QProcessEnvironment_systemEnvironment*(): QProcessEnvironment {.header:headerFile, importcpp:"QProcessEnvironment::systemEnvironment(@)".} # Public static
# Stuff for class QProcess

# Public constructors for QProcess
import nimqt/qtcore/qobject
# 1 default parameters!
proc newQProcess*(parent: ptr QObject): ptr QProcess {. header:headerFile, importcpp:"new QProcess(@)" .} #
proc newQProcess*(): ptr QProcess {. header:headerFile, importcpp:"new QProcess(@)" .} #

# Public methods for QProcess
# 1 default parameters!
proc static_QProcess_tr*(s: ptr char, c: ptr char, n: cint): QString {.header:headerFile, importcpp:"QProcess::tr(@)".} # Public static
proc static_QProcess_tr*(s: ptr char, c: ptr char): QString {.header:headerFile, importcpp:"QProcess::tr(@)".} # Public static
# 2 default parameters!
proc start*(this: ptr QProcess, program: QString, arguments: QStringList, mode: QIODeviceBase_OpenMode) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc start*(this: ptr QProcess, program: QString, arguments: QStringList) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc start*(this: ptr QProcess, program: QString) {.header:headerFile, importcpp:"#.start(@)".} # Public
# 1 default parameters!
proc start*(this: ptr QProcess, mode: QIODeviceBase_OpenMode) {.header:headerFile, importcpp:"#.start(@)".} # Public
proc start*(this: ptr QProcess) {.header:headerFile, importcpp:"#.start(@)".} # Public
# 1 default parameters!
proc startCommand*(this: ptr QProcess, command: QString, mode: QIODeviceBase_OpenMode) {.header:headerFile, importcpp:"#.startCommand(@)".} # Public
proc startCommand*(this: ptr QProcess, command: QString) {.header:headerFile, importcpp:"#.startCommand(@)".} # Public
# 1 default parameters!
proc startDetached*(this: ptr QProcess, pid: ptr clonglong): bool {.header:headerFile, importcpp:"#.startDetached(@)".} # Public
proc startDetached*(this: ptr QProcess): bool {.header:headerFile, importcpp:"#.startDetached(@)".} # Public
# 1 default parameters!
proc open*(this: ptr QProcess, mode: QIODeviceBase_OpenMode): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc open*(this: ptr QProcess): bool {.header:headerFile, importcpp:"#.open(@)".} # Public
proc program*(this: ptr QProcess): QString {.header:headerFile, importcpp:"#.program(@)".} # Public
proc setProgram*(this: ptr QProcess, program: QString) {.header:headerFile, importcpp:"#.setProgram(@)".} # Public
proc arguments*(this: ptr QProcess): QStringList {.header:headerFile, importcpp:"#.arguments(@)".} # Public
proc setArguments*(this: ptr QProcess, arguments: QStringList) {.header:headerFile, importcpp:"#.setArguments(@)".} # Public
proc processChannelMode*(this: ptr QProcess): QProcess_ProcessChannelMode {.header:headerFile, importcpp:"#.processChannelMode(@)".} # Public
proc setProcessChannelMode*(this: ptr QProcess, mode: QProcess_ProcessChannelMode) {.header:headerFile, importcpp:"#.setProcessChannelMode(@)".} # Public
proc inputChannelMode*(this: ptr QProcess): QProcess_InputChannelMode {.header:headerFile, importcpp:"#.inputChannelMode(@)".} # Public
proc setInputChannelMode*(this: ptr QProcess, mode: QProcess_InputChannelMode) {.header:headerFile, importcpp:"#.setInputChannelMode(@)".} # Public
proc readChannel*(this: ptr QProcess): QProcess_ProcessChannel {.header:headerFile, importcpp:"#.readChannel(@)".} # Public
proc setReadChannel*(this: ptr QProcess, channel: QProcess_ProcessChannel) {.header:headerFile, importcpp:"#.setReadChannel(@)".} # Public
proc closeReadChannel*(this: ptr QProcess, channel: QProcess_ProcessChannel) {.header:headerFile, importcpp:"#.closeReadChannel(@)".} # Public
proc closeWriteChannel*(this: ptr QProcess) {.header:headerFile, importcpp:"#.closeWriteChannel(@)".} # Public
proc setStandardInputFile*(this: ptr QProcess, fileName: QString) {.header:headerFile, importcpp:"#.setStandardInputFile(@)".} # Public
# 1 default parameters!
proc setStandardOutputFile*(this: ptr QProcess, fileName: QString, mode: QIODeviceBase_OpenMode) {.header:headerFile, importcpp:"#.setStandardOutputFile(@)".} # Public
proc setStandardOutputFile*(this: ptr QProcess, fileName: QString) {.header:headerFile, importcpp:"#.setStandardOutputFile(@)".} # Public
# 1 default parameters!
proc setStandardErrorFile*(this: ptr QProcess, fileName: QString, mode: QIODeviceBase_OpenMode) {.header:headerFile, importcpp:"#.setStandardErrorFile(@)".} # Public
proc setStandardErrorFile*(this: ptr QProcess, fileName: QString) {.header:headerFile, importcpp:"#.setStandardErrorFile(@)".} # Public
proc setStandardOutputProcess*(this: ptr QProcess, destination: ptr QProcess) {.header:headerFile, importcpp:"#.setStandardOutputProcess(@)".} # Public
proc workingDirectory*(this: ptr QProcess): QString {.header:headerFile, importcpp:"#.workingDirectory(@)".} # Public
proc setWorkingDirectory*(this: ptr QProcess, dir: QString) {.header:headerFile, importcpp:"#.setWorkingDirectory(@)".} # Public
proc setEnvironment*(this: ptr QProcess, environment: QStringList) {.header:headerFile, importcpp:"#.setEnvironment(@)".} # Public
proc environment*(this: ptr QProcess): QStringList {.header:headerFile, importcpp:"#.environment(@)".} # Public
proc setProcessEnvironment*(this: ptr QProcess, environment: QProcessEnvironment) {.header:headerFile, importcpp:"#.setProcessEnvironment(@)".} # Public
proc processEnvironment*(this: ptr QProcess): QProcessEnvironment {.header:headerFile, importcpp:"#.processEnvironment(@)".} # Public
proc error*(this: ptr QProcess): QProcess_ProcessError {.header:headerFile, importcpp:"#.error(@)".} # Public
proc state*(this: ptr QProcess): QProcess_ProcessState {.header:headerFile, importcpp:"#.state(@)".} # Public
proc processId*(this: ptr QProcess): clonglong {.header:headerFile, importcpp:"#.processId(@)".} # Public
# 1 default parameters!
proc waitForStarted*(this: ptr QProcess, msecs: cint): bool {.header:headerFile, importcpp:"#.waitForStarted(@)".} # Public
proc waitForStarted*(this: ptr QProcess): bool {.header:headerFile, importcpp:"#.waitForStarted(@)".} # Public
# 1 default parameters!
proc waitForReadyRead*(this: ptr QProcess, msecs: cint): bool {.header:headerFile, importcpp:"#.waitForReadyRead(@)".} # Public
proc waitForReadyRead*(this: ptr QProcess): bool {.header:headerFile, importcpp:"#.waitForReadyRead(@)".} # Public
# 1 default parameters!
proc waitForBytesWritten*(this: ptr QProcess, msecs: cint): bool {.header:headerFile, importcpp:"#.waitForBytesWritten(@)".} # Public
proc waitForBytesWritten*(this: ptr QProcess): bool {.header:headerFile, importcpp:"#.waitForBytesWritten(@)".} # Public
# 1 default parameters!
proc waitForFinished*(this: ptr QProcess, msecs: cint): bool {.header:headerFile, importcpp:"#.waitForFinished(@)".} # Public
proc waitForFinished*(this: ptr QProcess): bool {.header:headerFile, importcpp:"#.waitForFinished(@)".} # Public
import nimqt/qtcore/qbytearray
proc readAllStandardOutput*(this: ptr QProcess): QByteArray {.header:headerFile, importcpp:"#.readAllStandardOutput(@)".} # Public
proc readAllStandardError*(this: ptr QProcess): QByteArray {.header:headerFile, importcpp:"#.readAllStandardError(@)".} # Public
proc exitCode*(this: ptr QProcess): cint {.header:headerFile, importcpp:"#.exitCode(@)".} # Public
proc exitStatus*(this: ptr QProcess): QProcess_ExitStatus {.header:headerFile, importcpp:"#.exitStatus(@)".} # Public
proc bytesToWrite*(this: ptr QProcess): clonglong {.header:headerFile, importcpp:"#.bytesToWrite(@)".} # Public
proc isSequential*(this: ptr QProcess): bool {.header:headerFile, importcpp:"#.isSequential(@)".} # Public
proc close*(this: ptr QProcess) {.header:headerFile, importcpp:"#.close(@)".} # Public
# 1 default parameters!
proc static_QProcess_execute*(program: QString, arguments: QStringList): cint {.header:headerFile, importcpp:"QProcess::execute(@)".} # Public static
proc static_QProcess_execute*(program: QString): cint {.header:headerFile, importcpp:"QProcess::execute(@)".} # Public static
# 3 default parameters!
proc static_QProcess_startDetached*(program: QString, arguments: QStringList, workingDirectory: QString, pid: ptr clonglong): bool {.header:headerFile, importcpp:"QProcess::startDetached(@)".} # Public static
proc static_QProcess_startDetached*(program: QString, arguments: QStringList, workingDirectory: QString): bool {.header:headerFile, importcpp:"QProcess::startDetached(@)".} # Public static
proc static_QProcess_startDetached*(program: QString, arguments: QStringList): bool {.header:headerFile, importcpp:"QProcess::startDetached(@)".} # Public static
proc static_QProcess_startDetached*(program: QString): bool {.header:headerFile, importcpp:"QProcess::startDetached(@)".} # Public static
proc static_QProcess_systemEnvironment*(): QStringList {.header:headerFile, importcpp:"QProcess::systemEnvironment(@)".} # Public static
proc static_QProcess_nullDevice*(): QString {.header:headerFile, importcpp:"QProcess::nullDevice(@)".} # Public static
proc terminate*(this: ptr QProcess) {.header:headerFile, importcpp:"#.terminate(@)".} # Public
proc kill*(this: ptr QProcess) {.header:headerFile, importcpp:"#.kill(@)".} # Public
proc finished*(this: ptr QProcess, exitCode: cint, exitStatus: QProcess_ExitStatus) {.header:headerFile, importcpp:"#.finished(@)".} # Public
proc errorOccurred*(this: ptr QProcess, error: QProcess_ProcessError) {.header:headerFile, importcpp:"#.errorOccurred(@)".} # Public

# Protected methods methods for QProcess
proc setProcessState*(this: ptr QProcess, state: QProcess_ProcessState) {.header:headerFile, importcpp:"#.setProcessState(@)".} # Protected
proc readData*(this: ptr QProcess, data: ptr char, maxlen: clonglong): clonglong {.header:headerFile, importcpp:"#.readData(@)".} # Protected
proc writeData*(this: ptr QProcess, data: ptr char, len: clonglong): clonglong {.header:headerFile, importcpp:"#.writeData(@)".} # Protected

export qstringlist
export qstring
export qiodevicebase
export qbytearray
export qobject
export qiodevice
