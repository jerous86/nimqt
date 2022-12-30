import xmlparser
import strformat
import sequtils
import strutils
import xmltree
import os

import skips
import typeDb

let args=commandLineParams()
let xmlInputFilesDir = args[0]
let outputDir = args[1]
let components = args[2..^1]
let typeDbFilePath = outputDir&"/typeDb.txt"


var db=TypeDb()

for component in components:
    let component=component.splitFile.name.toLowerAscii
    for xmlInputFile in walkFiles(&"{xmlInputFilesDir}/{component}/*.xml"):
        if xmlInputFile.getFileSize==0: continue
        let root:XmlNode=loadXml(xmlInputFile)

        let module=xmlInputFile.splitFile.name.splitFile.name
        let moduleName=component&"/"&module
        
        skips.component = component
        skips.module = module
        
        proc do_enums(xml:XmlNode) =
            for e in xml.items.toSeq.filterIt(it.tag=="enum" and 
                it.isVisible and 
                id_enum(it.attr("full_name").fixNameSpace).skippable(Enum)==false
                ):
                if e.attr("name").len>0:
                    db.add TypeInfo(component:component, module:module, mt:Enum,
                        name:e.attr("full_name").fixNameSpace.replaceSpecialTypes
                        )

        proc do_type_aliases(xml:XmlNode) =
            for e in xml.items.toSeq.filterIt(it.tag in ["type_alias", "type_def"] and
                    it.isVisible and
                    id_alias(it.attr("full_name").fixNameSpace, it.attr("alias_for").fixNameSpace).skippable(Alias)==false
                    ):
                db.add TypeInfo(component:component, module:module, mt:Alias,
                    name:e.attr("full_name").fixNameSpace.replaceSpecialTypes
                    )


        proc do_class(xml:XmlNode) =
            for class in xml.items.toSeq.filterIt(it.tag in ["class_decl","class_template"] and it.isVisible):
                var fullName=class.attr("full_name")
                
                # Exception, as the class is defined as "class QMetaObject::Connection" and we don't handle it well.
                if fullName=="Connection" and moduleName=="qtcore/qobjectdefs":
                    fullName="QMetaObject::Connection"

                if id_class(fullName.fixNameSpace).skippable(Class): continue
                
                let parents=class.items.toSeq.filterIt(it.tag=="base_class")
                db.add TypeInfo(component:component, module:module, mt:Class,
                    name:fullName.fixNameSpace.replaceSpecialTypes,
                    baseClasses: parents.mapIt(it.attr("full_name").replace(fullName&"::","").fixNameSpace)
                    )
                
                class.do_class
                class.do_enums
                class.do_type_aliases

        root.do_class
        root.do_enums
        root.do_type_aliases

        discard root.items.toSeq.filterIt(it.tag=="namespace").mapIt((it.do_class; it.do_enums; it.do_type_aliases; 0))

db.writeToFile(typeDbFilePath)
