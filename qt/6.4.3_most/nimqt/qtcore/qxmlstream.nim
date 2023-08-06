const headerFile* = "QtCore/qxmlstream.h"

type
    # Enums found in the C++ code
    # Global
    QXmlStreamReader_TokenType* {.header:headerFile,importcpp:"QXmlStreamReader::TokenType".} = enum NoToken = 0, Invalid = 0x1, StartDocument = 0x2, EndDocument = 0x3, 
        StartElement = 0x4, EndElement = 0x5, Characters = 0x6, Comment = 0x7, DTD = 0x8, 
        EntityReference = 0x9, ProcessingInstruction = 0xa
    QXmlStreamReader_ReadElementTextBehaviour* {.header:headerFile,importcpp:"QXmlStreamReader::ReadElementTextBehaviour".} = enum ErrorOnUnexpectedElement = 0, IncludeChildElements = 0x1, SkipChildElements = 0x2
    QXmlStreamReader_Error* {.header:headerFile,importcpp:"QXmlStreamReader::Error".} = enum NoError = 0, UnexpectedElementError = 0x1, CustomError = 0x2, NotWellFormedError = 0x3, 
        PrematureEndOfDocumentError = 0x4

type
    # Classes found in the C++ code
    QXmlStreamAttribute* {.header:headerFile,importcpp:"QXmlStreamAttribute" ,pure,inheritable.} = object
    QXmlStreamAttributes* {.header:headerFile,importcpp:"QXmlStreamAttributes" ,pure,inheritable.} = object
    QXmlStreamNamespaceDeclaration* {.header:headerFile,importcpp:"QXmlStreamNamespaceDeclaration" ,pure,inheritable.} = object
    QXmlStreamNotationDeclaration* {.header:headerFile,importcpp:"QXmlStreamNotationDeclaration" ,pure,inheritable.} = object
    QXmlStreamEntityDeclaration* {.header:headerFile,importcpp:"QXmlStreamEntityDeclaration" ,pure,inheritable.} = object
    QXmlStreamEntityResolver* {.header:headerFile,importcpp:"QXmlStreamEntityResolver" ,pure,inheritable.} = object
    QXmlStreamReader* {.header:headerFile,importcpp:"QXmlStreamReader" ,pure,inheritable.} = object
    QXmlStreamWriter* {.header:headerFile,importcpp:"QXmlStreamWriter" ,pure,inheritable.} = object
import nimqt/qtcore/qlist


type
    # typedefs found in the C++ code
    QXmlStreamNamespaceDeclarations * = QList[QXmlStreamNamespaceDeclaration]
    QXmlStreamNotationDeclarations * = QList[QXmlStreamNotationDeclaration]
    QXmlStreamEntityDeclarations * = QList[QXmlStreamEntityDeclaration]

# Stuff for class QXmlStreamAttribute

# Public constructors for QXmlStreamAttribute
proc newQXmlStreamAttribute*(): QXmlStreamAttribute {. header:headerFile, importcpp:"QXmlStreamAttribute(@)", constructor .} #
import nimqt/qtcore/qstring
proc newQXmlStreamAttribute*(qualifiedName: QString, value: QString): QXmlStreamAttribute {. header:headerFile, importcpp:"QXmlStreamAttribute(@)", constructor .} #
proc newQXmlStreamAttribute*(namespaceUri: QString, name: QString, value: QString): QXmlStreamAttribute {. header:headerFile, importcpp:"QXmlStreamAttribute(@)", constructor .} #

# Public methods for QXmlStreamAttribute
proc isDefault*(this: QXmlStreamAttribute): bool {.header:headerFile, importcpp:"#.isDefault(@)".} # Public
proc `!=`*(this: QXmlStreamAttribute, other: QXmlStreamAttribute): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QXmlStreamAttributes

# Public constructors for QXmlStreamAttributes
proc newQXmlStreamAttributes*(): QXmlStreamAttributes {. header:headerFile, importcpp:"QXmlStreamAttributes(@)", constructor .} #

# Public methods for QXmlStreamAttributes
proc append*(this: QXmlStreamAttributes, namespaceUri: QString, name: QString, value: QString) {.header:headerFile, importcpp:"#.append(@)".} # Public
proc append*(this: QXmlStreamAttributes, qualifiedName: QString, value: QString) {.header:headerFile, importcpp:"#.append(@)".} # Public
proc hasAttribute*(this: QXmlStreamAttributes, qualifiedName: QString): bool {.header:headerFile, importcpp:"#.hasAttribute(@)".} # Public
proc hasAttribute*(this: QXmlStreamAttributes, namespaceUri: QString, name: QString): bool {.header:headerFile, importcpp:"#.hasAttribute(@)".} # Public
# Stuff for class QXmlStreamNamespaceDeclaration

# Public constructors for QXmlStreamNamespaceDeclaration
proc newQXmlStreamNamespaceDeclaration*(): QXmlStreamNamespaceDeclaration {. header:headerFile, importcpp:"QXmlStreamNamespaceDeclaration(@)", constructor .} #
proc newQXmlStreamNamespaceDeclaration*(prefix: QString, namespaceUri: QString): QXmlStreamNamespaceDeclaration {. header:headerFile, importcpp:"QXmlStreamNamespaceDeclaration(@)", constructor .} #

# Public methods for QXmlStreamNamespaceDeclaration
proc `!=`*(this: QXmlStreamNamespaceDeclaration, other: QXmlStreamNamespaceDeclaration): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QXmlStreamNotationDeclaration

# Public constructors for QXmlStreamNotationDeclaration
proc newQXmlStreamNotationDeclaration*(): QXmlStreamNotationDeclaration {. header:headerFile, importcpp:"QXmlStreamNotationDeclaration(@)", constructor .} #

# Public methods for QXmlStreamNotationDeclaration
proc `!=`*(this: QXmlStreamNotationDeclaration, other: QXmlStreamNotationDeclaration): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QXmlStreamEntityDeclaration

# Public constructors for QXmlStreamEntityDeclaration
proc newQXmlStreamEntityDeclaration*(): QXmlStreamEntityDeclaration {. header:headerFile, importcpp:"QXmlStreamEntityDeclaration(@)", constructor .} #

# Public methods for QXmlStreamEntityDeclaration
proc `!=`*(this: QXmlStreamEntityDeclaration, other: QXmlStreamEntityDeclaration): bool {.header:headerFile, importcpp:"#.operator!=(@)".} # Public
# Stuff for class QXmlStreamEntityResolver

# Public methods for QXmlStreamEntityResolver
proc resolveEntity*(this: QXmlStreamEntityResolver, publicId: QString, systemId: QString): QString {.header:headerFile, importcpp:"#.resolveEntity(@)".} # Public
proc resolveUndeclaredEntity*(this: QXmlStreamEntityResolver, name: QString): QString {.header:headerFile, importcpp:"#.resolveUndeclaredEntity(@)".} # Public
# Stuff for class QXmlStreamReader

# Public constructors for QXmlStreamReader
proc newQXmlStreamReader*(): QXmlStreamReader {. header:headerFile, importcpp:"QXmlStreamReader(@)", constructor .} #
import nimqt/qtcore/qiodevice
proc newQXmlStreamReader*(device: ptr QIODevice): QXmlStreamReader {. header:headerFile, importcpp:"QXmlStreamReader(@)", constructor .} #
import nimqt/qtcore/qbytearray
proc newQXmlStreamReader*(data: QByteArray): QXmlStreamReader {. header:headerFile, importcpp:"QXmlStreamReader(@)", constructor .} #
proc newQXmlStreamReader*(data: QString): QXmlStreamReader {. header:headerFile, importcpp:"QXmlStreamReader(@)", constructor .} #
proc newQXmlStreamReader*(data: ptr char): QXmlStreamReader {. header:headerFile, importcpp:"QXmlStreamReader(@)", constructor .} #

# Public methods for QXmlStreamReader
proc setDevice*(this: QXmlStreamReader, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: QXmlStreamReader): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc addData*(this: QXmlStreamReader, data: QByteArray) {.header:headerFile, importcpp:"#.addData(@)".} # Public
proc addData*(this: QXmlStreamReader, data: QString) {.header:headerFile, importcpp:"#.addData(@)".} # Public
proc addData*(this: QXmlStreamReader, data: ptr char) {.header:headerFile, importcpp:"#.addData(@)".} # Public
proc clear*(this: QXmlStreamReader) {.header:headerFile, importcpp:"#.clear(@)".} # Public
proc atEnd*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.atEnd(@)".} # Public
proc readNext*(this: QXmlStreamReader): QXmlStreamReader_TokenType {.header:headerFile, importcpp:"#.readNext(@)".} # Public
proc readNextStartElement*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.readNextStartElement(@)".} # Public
proc skipCurrentElement*(this: QXmlStreamReader) {.header:headerFile, importcpp:"#.skipCurrentElement(@)".} # Public
proc tokenType*(this: QXmlStreamReader): QXmlStreamReader_TokenType {.header:headerFile, importcpp:"#.tokenType(@)".} # Public
proc tokenString*(this: QXmlStreamReader): QString {.header:headerFile, importcpp:"#.tokenString(@)".} # Public
proc setNamespaceProcessing*(this: QXmlStreamReader, arg_0: bool) {.header:headerFile, importcpp:"#.setNamespaceProcessing(@)".} # Public
proc namespaceProcessing*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.namespaceProcessing(@)".} # Public
proc isStartDocument*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isStartDocument(@)".} # Public
proc isEndDocument*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isEndDocument(@)".} # Public
proc isStartElement*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isStartElement(@)".} # Public
proc isEndElement*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isEndElement(@)".} # Public
proc isCharacters*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isCharacters(@)".} # Public
proc isWhitespace*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isWhitespace(@)".} # Public
proc isCDATA*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isCDATA(@)".} # Public
proc isComment*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isComment(@)".} # Public
proc isDTD*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isDTD(@)".} # Public
proc isEntityReference*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isEntityReference(@)".} # Public
proc isProcessingInstruction*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isProcessingInstruction(@)".} # Public
proc isStandaloneDocument*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.isStandaloneDocument(@)".} # Public
proc lineNumber*(this: QXmlStreamReader): clonglong {.header:headerFile, importcpp:"#.lineNumber(@)".} # Public
proc columnNumber*(this: QXmlStreamReader): clonglong {.header:headerFile, importcpp:"#.columnNumber(@)".} # Public
proc characterOffset*(this: QXmlStreamReader): clonglong {.header:headerFile, importcpp:"#.characterOffset(@)".} # Public
proc attributes*(this: QXmlStreamReader): QXmlStreamAttributes {.header:headerFile, importcpp:"#.attributes(@)".} # Public
proc readElementText*(this: QXmlStreamReader, behaviour: QXmlStreamReader_ReadElementTextBehaviour): QString {.header:headerFile, importcpp:"#.readElementText(@)".} # Public
proc namespaceDeclarations*(this: QXmlStreamReader): QXmlStreamNamespaceDeclarations {.header:headerFile, importcpp:"#.namespaceDeclarations(@)".} # Public
proc addExtraNamespaceDeclaration*(this: QXmlStreamReader, extraNamespaceDeclaraction: QXmlStreamNamespaceDeclaration) {.header:headerFile, importcpp:"#.addExtraNamespaceDeclaration(@)".} # Public
proc addExtraNamespaceDeclarations*(this: QXmlStreamReader, extraNamespaceDeclaractions: QXmlStreamNamespaceDeclarations) {.header:headerFile, importcpp:"#.addExtraNamespaceDeclarations(@)".} # Public
proc notationDeclarations*(this: QXmlStreamReader): QXmlStreamNotationDeclarations {.header:headerFile, importcpp:"#.notationDeclarations(@)".} # Public
proc entityDeclarations*(this: QXmlStreamReader): QXmlStreamEntityDeclarations {.header:headerFile, importcpp:"#.entityDeclarations(@)".} # Public
proc entityExpansionLimit*(this: QXmlStreamReader): cint {.header:headerFile, importcpp:"#.entityExpansionLimit(@)".} # Public
proc setEntityExpansionLimit*(this: QXmlStreamReader, limit: cint) {.header:headerFile, importcpp:"#.setEntityExpansionLimit(@)".} # Public
# 1 default parameters!
proc raiseError*(this: QXmlStreamReader, message: QString) {.header:headerFile, importcpp:"#.raiseError(@)".} # Public
proc raiseError*(this: QXmlStreamReader) {.header:headerFile, importcpp:"#.raiseError(@)".} # Public
proc errorString*(this: QXmlStreamReader): QString {.header:headerFile, importcpp:"#.errorString(@)".} # Public
proc error*(this: QXmlStreamReader): QXmlStreamReader_Error {.header:headerFile, importcpp:"#.error(@)".} # Public
proc hasError*(this: QXmlStreamReader): bool {.header:headerFile, importcpp:"#.hasError(@)".} # Public
proc setEntityResolver*(this: QXmlStreamReader, resolver: ptr QXmlStreamEntityResolver) {.header:headerFile, importcpp:"#.setEntityResolver(@)".} # Public
proc entityResolver*(this: QXmlStreamReader): ptr QXmlStreamEntityResolver {.header:headerFile, importcpp:"#.entityResolver(@)".} # Public
# Stuff for class QXmlStreamWriter

# Public constructors for QXmlStreamWriter
proc newQXmlStreamWriter*(): QXmlStreamWriter {. header:headerFile, importcpp:"QXmlStreamWriter(@)", constructor .} #
proc newQXmlStreamWriter*(device: ptr QIODevice): QXmlStreamWriter {. header:headerFile, importcpp:"QXmlStreamWriter(@)", constructor .} #
proc newQXmlStreamWriter*(array: ptr QByteArray): QXmlStreamWriter {. header:headerFile, importcpp:"QXmlStreamWriter(@)", constructor .} #
proc newQXmlStreamWriter*(string: ptr QString): QXmlStreamWriter {. header:headerFile, importcpp:"QXmlStreamWriter(@)", constructor .} #

# Public methods for QXmlStreamWriter
proc setDevice*(this: QXmlStreamWriter, device: ptr QIODevice) {.header:headerFile, importcpp:"#.setDevice(@)".} # Public
proc device*(this: QXmlStreamWriter): ptr QIODevice {.header:headerFile, importcpp:"#.device(@)".} # Public
proc setAutoFormatting*(this: QXmlStreamWriter, arg_0: bool) {.header:headerFile, importcpp:"#.setAutoFormatting(@)".} # Public
proc autoFormatting*(this: QXmlStreamWriter): bool {.header:headerFile, importcpp:"#.autoFormatting(@)".} # Public
proc setAutoFormattingIndent*(this: QXmlStreamWriter, spacesOrTabs: cint) {.header:headerFile, importcpp:"#.setAutoFormattingIndent(@)".} # Public
proc autoFormattingIndent*(this: QXmlStreamWriter): cint {.header:headerFile, importcpp:"#.autoFormattingIndent(@)".} # Public
proc writeAttribute*(this: QXmlStreamWriter, qualifiedName: QString, value: QString) {.header:headerFile, importcpp:"#.writeAttribute(@)".} # Public
proc writeAttribute*(this: QXmlStreamWriter, namespaceUri: QString, name: QString, value: QString) {.header:headerFile, importcpp:"#.writeAttribute(@)".} # Public
proc writeAttribute*(this: QXmlStreamWriter, attribute: QXmlStreamAttribute) {.header:headerFile, importcpp:"#.writeAttribute(@)".} # Public
proc writeAttributes*(this: QXmlStreamWriter, attributes: QXmlStreamAttributes) {.header:headerFile, importcpp:"#.writeAttributes(@)".} # Public
proc writeCDATA*(this: QXmlStreamWriter, text: QString) {.header:headerFile, importcpp:"#.writeCDATA(@)".} # Public
proc writeCharacters*(this: QXmlStreamWriter, text: QString) {.header:headerFile, importcpp:"#.writeCharacters(@)".} # Public
proc writeComment*(this: QXmlStreamWriter, text: QString) {.header:headerFile, importcpp:"#.writeComment(@)".} # Public
proc writeDTD*(this: QXmlStreamWriter, dtd: QString) {.header:headerFile, importcpp:"#.writeDTD(@)".} # Public
proc writeEmptyElement*(this: QXmlStreamWriter, qualifiedName: QString) {.header:headerFile, importcpp:"#.writeEmptyElement(@)".} # Public
proc writeEmptyElement*(this: QXmlStreamWriter, namespaceUri: QString, name: QString) {.header:headerFile, importcpp:"#.writeEmptyElement(@)".} # Public
proc writeTextElement*(this: QXmlStreamWriter, qualifiedName: QString, text: QString) {.header:headerFile, importcpp:"#.writeTextElement(@)".} # Public
proc writeTextElement*(this: QXmlStreamWriter, namespaceUri: QString, name: QString, text: QString) {.header:headerFile, importcpp:"#.writeTextElement(@)".} # Public
proc writeEndDocument*(this: QXmlStreamWriter) {.header:headerFile, importcpp:"#.writeEndDocument(@)".} # Public
proc writeEndElement*(this: QXmlStreamWriter) {.header:headerFile, importcpp:"#.writeEndElement(@)".} # Public
proc writeEntityReference*(this: QXmlStreamWriter, name: QString) {.header:headerFile, importcpp:"#.writeEntityReference(@)".} # Public
# 1 default parameters!
proc writeNamespace*(this: QXmlStreamWriter, namespaceUri: QString, prefix: QString) {.header:headerFile, importcpp:"#.writeNamespace(@)".} # Public
proc writeNamespace*(this: QXmlStreamWriter, namespaceUri: QString) {.header:headerFile, importcpp:"#.writeNamespace(@)".} # Public
proc writeDefaultNamespace*(this: QXmlStreamWriter, namespaceUri: QString) {.header:headerFile, importcpp:"#.writeDefaultNamespace(@)".} # Public
# 1 default parameters!
proc writeProcessingInstruction*(this: QXmlStreamWriter, target: QString, data: QString) {.header:headerFile, importcpp:"#.writeProcessingInstruction(@)".} # Public
proc writeProcessingInstruction*(this: QXmlStreamWriter, target: QString) {.header:headerFile, importcpp:"#.writeProcessingInstruction(@)".} # Public
proc writeStartDocument*(this: QXmlStreamWriter) {.header:headerFile, importcpp:"#.writeStartDocument(@)".} # Public
proc writeStartDocument*(this: QXmlStreamWriter, version: QString) {.header:headerFile, importcpp:"#.writeStartDocument(@)".} # Public
proc writeStartDocument*(this: QXmlStreamWriter, version: QString, standalone: bool) {.header:headerFile, importcpp:"#.writeStartDocument(@)".} # Public
proc writeStartElement*(this: QXmlStreamWriter, qualifiedName: QString) {.header:headerFile, importcpp:"#.writeStartElement(@)".} # Public
proc writeStartElement*(this: QXmlStreamWriter, namespaceUri: QString, name: QString) {.header:headerFile, importcpp:"#.writeStartElement(@)".} # Public
proc writeCurrentToken*(this: QXmlStreamWriter, reader: QXmlStreamReader) {.header:headerFile, importcpp:"#.writeCurrentToken(@)".} # Public
proc hasError*(this: QXmlStreamWriter): bool {.header:headerFile, importcpp:"#.hasError(@)".} # Public

export qstring
export qbytearray
export qlist
export qiodevice
