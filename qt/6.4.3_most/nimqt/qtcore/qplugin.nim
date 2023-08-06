const headerFile* = "QtCore/qplugin.h"

type
    # Classes found in the C++ code
    QPluginMetaData* {.header:headerFile,importcpp:"QPluginMetaData" ,pure,inheritable.} = object
    QPluginMetaData_Header* {.header:headerFile,importcpp:"QPluginMetaData::Header" ,pure,inheritable.} = object
    QPluginMetaData_MagicHeader* {.header:headerFile,importcpp:"QPluginMetaData::MagicHeader" ,pure,inheritable.} = object
    QPluginMetaData_ElfNoteHeader* {.header:headerFile,importcpp:"QPluginMetaData::ElfNoteHeader" ,pure,inheritable.} = object
    QStaticPlugin* {.header:headerFile,importcpp:"QStaticPlugin" ,pure,inheritable.} = object
    QPluginMetaDataV2* {.header:headerFile,importcpp:"QPluginMetaDataV2" ,pure,inheritable.} = object
    QPluginMetaDataV2_ElfNotePayload* {.header:headerFile,importcpp:"QPluginMetaDataV2::ElfNotePayload" ,pure.} = object of QPluginMetaData_ElfNoteHeader
    QPluginMetaDataV2_RegularPayload* {.header:headerFile,importcpp:"QPluginMetaDataV2::RegularPayload" ,pure.} = object of QPluginMetaData_MagicHeader
    QPluginMetaDataV2_StaticPayload* {.header:headerFile,importcpp:"QPluginMetaDataV2::StaticPayload" ,pure,inheritable.} = object


type
    # typedefs found in the C++ code
    QPluginMetaDataV2_Payload * = QPluginMetaDataV2_RegularPayload

# Stuff for class QPluginMetaData

# Public methods for QPluginMetaData
proc static_QPluginMetaData_archRequirements*(): uint8 {.header:headerFile, importcpp:"QPluginMetaData::archRequirements(@)".} # Public static
# Stuff for class QPluginMetaData_MagicHeader

# Public constructors for QPluginMetaData_MagicHeader
proc newQPluginMetaData_MagicHeader*(): ptr QPluginMetaData_MagicHeader {. header:headerFile, importcpp:"new QPluginMetaData_MagicHeader(@)" .} #
# Stuff for class QPluginMetaData_ElfNoteHeader

# Public constructors for QPluginMetaData_ElfNoteHeader
proc newQPluginMetaData_ElfNoteHeader*(payloadSize: cuint): ptr QPluginMetaData_ElfNoteHeader {. header:headerFile, importcpp:"new QPluginMetaData_ElfNoteHeader(@)" .} #
# Stuff for class QStaticPlugin

# Public methods for QStaticPlugin
import nimqt/qtcore/qjsonobject
proc metaData*(this: QStaticPlugin): QJsonObject {.header:headerFile, importcpp:"#.metaData(@)".} # Public
# Stuff for class QPluginMetaDataV2_ElfNotePayload

# Public constructors for QPluginMetaDataV2_ElfNotePayload
proc newQPluginMetaDataV2_ElfNotePayload*(): ptr QPluginMetaDataV2_ElfNotePayload {. header:headerFile, importcpp:"new QPluginMetaDataV2_ElfNotePayload(@)" .} #
# Stuff for class QPluginMetaDataV2_RegularPayload

# Public constructors for QPluginMetaDataV2_RegularPayload
proc newQPluginMetaDataV2_RegularPayload*(): ptr QPluginMetaDataV2_RegularPayload {. header:headerFile, importcpp:"new QPluginMetaDataV2_RegularPayload(@)" .} #
# Stuff for class QPluginMetaDataV2_StaticPayload

# Public constructors for QPluginMetaDataV2_StaticPayload
proc newQPluginMetaDataV2_StaticPayload*(): QPluginMetaDataV2_StaticPayload {. header:headerFile, importcpp:"QPluginMetaDataV2_StaticPayload(@)", constructor .} #

export qjsonobject
