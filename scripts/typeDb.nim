import strformat
import sequtils
import streams
import strutils
import tables
import re

import skips

func fixNameSpace*(x:string): string = x.replace("::", "_")

type
    TypeInfo* = object
        component*: string
        module*: string
        mt*: MatchType
        name*: string
        baseClasses*: seq[string] # Only the direct base classes
        alias_for*: string
        
    TypeDb* = object
        xs*: seq[TypeInfo]
        components*: Table[string, seq[int]]
        modules*: Table[string, Table[string,seq[int]]]
        names*: Table[string, int] # Contains both the normal and lower case name

func summary*(db:TypeDb): string = 
    &"TypeDb {{ xs.len:{db.xs.len}, components: {toSeq(db.components.keys)}, modules.len:{toSeq(db.modules.values).mapIt(it.len)}, names.len:{db.names.len} }}"

func toImport*(i:TypeInfo): string = &"{i.component}/{i.module}"
func add*(db:var TypeDb, i:TypeInfo) =
    #var i=i
    #i.component=i.component.toLowerAscii
    #i.module=i.module.toLowerAscii
    
    db.xs.add i
    if not db.components.hasKey(i.component):
        db.components[i.component] = @[]
        db.modules[i.component] = initTable[string,seq[int]]()
    if not db.modules[i.component].hasKey(i.module): db.modules[i.component][i.module] = @[]
    
    db.components[i.component].add db.xs.len-1
    db.modules[i.component][i.module].add db.xs.len-1
    
    if db.names.hasKey(i.name):
        if db.xs[db.names[i.name]].module!=i.module and false:
            debugEcho(&"typeDb::add: Warning: different modules!")
            debugEcho(&"\tNew type: {i}")
            debugEcho(&"\tCur type: {db.xs[db.names[i.name]]}")
    else:
        db.names[i.name]=db.xs.len-1
        db.names[i.name.toLowerAscii]=db.xs.len-1

func listBaseClassesRec*(db:TypeDb, i:TypeInfo): seq[string] =
    result = i.baseClasses
    for x in i.baseClasses:
        if db.names.hasKey(x):
            result.add db.listBaseClassesRec(db.xs[db.names[x]])

# Returns true if there are classes that inherit from class
func hasChildClasses*(db:TypeDb, class:string): bool =
    for x in db.xs:
        if x.mt==Class and class in x.baseClasses: return true

proc readFromFile*(filePath:string): TypeDb =
    try:
        for line in filePath.lines:
            if line.strip.len==0 or line.startsWith("#"): continue
            
            if line =~ re"([^/]+)/([^ ]+) class (.*) :: (.*)":
                result.add TypeInfo(component:matches[0], module:matches[1], mt:Class, name: matches[2], baseClasses:matches[3].split(" < "))
            elif line =~ re"([^/]+)/([^ ]+) enum (.*)":
                result.add TypeInfo(component:matches[0], module:matches[1], mt:Enum, name: matches[2])
            elif line =~ re"([^/]+)/([^ ]+) alias (.*) -> (.*)":
                result.add TypeInfo(component:matches[0], module:matches[1], mt:Alias, name: matches[2], alias_for: matches[3])
            elif line =~ re"([^/]+)/([^ ]+) derivedalias (.*) -> (.*)":
                result.add TypeInfo(component:matches[0], module:matches[1], mt:DerivedAlias, name: matches[2], alias_for: matches[3])
            else:
                echo &"typeDb::readFromFile: Could not parse line '{line}'"
    except IOError: 
        echo "typeDb::readFromFile: Failed to read file ",filePath
            
proc writeToFile*(db:TypeDb, filePath:string) =
    let ostream=newFileStream(filePath, fmWrite)
    assert not ostream.isNil, filePath
    
    for component in db.components.keys:
        for module in db.modules[component].keys:
            skips.component=component
            skips.module=module
            
            ostream.writeLine &"\n"
            for tii in db.modules[component][module]:
                let ti=db.xs[tii]
                case ti.mt
                of Class: ostream.writeLine id_class(ti.name) & " :: " & ti.baseClasses.join(" < ")
                of Enum: ostream.writeLine id_enum(ti.name)
                of Alias: ostream.writeLine id_alias(ti.name, ti.alias_for)
                else: discard
            
                # Inherit types and enums!
                # E.g. QFileDevice has an enum QFileDevice_FileError
                # But QFile derives from QFileDevice, hence QFile_FileError should also be valid!
                for baseClass in db.listBaseClassesRec(ti):
                    # Here, we list all the entities that are in the module that belongs to the base class
                    if baseClass in db.names:
                        assert baseClass in db.names, &"baseClass {baseClass} in {db.names}"
                        assert component in db.modules, &"component {component}"
                        let x=db.xs[db.names[baseClass]]
                        assert x.module in db.modules[x.component], &"{x.module} in {toSeq(db.modules[x.component].keys)}"
                        for btii in db.modules[x.component][x.module]:
                            let bti=db.xs[btii]
                            # Here, we check if the alias or enum starts with e.g. QFileDevice
                            if bti.mt in [Alias,Enum] and bti.name.startsWith(&"{baseClass}_"):
                                # If so, we add an alias to this entity!
                                ostream.writeLine id_derived_alias(ti.name & bti.name[baseClass.len..^1], bti.name)
    
    ostream.close
