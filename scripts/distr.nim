# This script generates a "distribution" of qt modules, e.g. a minimal set to get specified c++ classes working.
# This allows for faster compilation times.
# The script figures out what methods can be enabled and what modules to import.

import os
import sequtils
import tables
import strformat
import sets
import parseopt
import strutils

import typeDb
import xml2nimlib

type
    Distribution = object
        # All the classes we absolutely must have. The dependent classes will 
        # be resolved automatically.
        includes: seq[string]
        requiredClasses: seq[string]

func merge*(l,r:Distribution): Distribution =
    Distribution(
        includes: concat(l.includes, r.includes).deduplicate,
        requiredClasses: concat(l.requiredClasses, r.requiredClasses).deduplicate
        )

template curFilePath(): string = instantiationInfo(0, fullPaths=true).filename

let distributions:Table[string,Distribution]=block:
    var res:Table[string,Distribution]
    let dir = curFilePath().parentDir & "/distributions/"
    for file in walkDir(dir):
        let file=file.path
        let lines=file.lines.toSeq
            .mapIt(if '#' in it: it.substr(0, it.find('#')-1).strip else: it)
            .filterIt(it.len>0)
        let includes:seq[string]=lines
            .filterIt(it.toLower.startsWith("include "))
            .mapIt(it.substr("include ".len).strip.split(" ")).concat.deduplicate
            .mapIt(it.strip)
            .filterIt(it.len>0)
        let requiredClasses:seq[string]=lines
            .filterIt(not it.toLower.startsWith("include "))
            .mapIt(it.strip.split(" ")).concat.deduplicate
            .mapIt(it.strip)
            .filterIt(it.len>0)
        
        # We allow doing something like "include core.txt" or "include core"
        res[file.splitFile.name]=Distribution(includes:includes, requiredClasses:requiredClasses)
        res[file.extractFilename]=Distribution(includes:includes, requiredClasses:requiredClasses)
    res

func requiredClassesRec(distr:string, distributions:Table[string,Distribution]): seq[string] =
    assert distributions.hasKey distr, &"Could not find distribution '{distr}'"
    result = distributions[distr].requiredClasses
    for p in distributions[distr].includes:
        result.add p.requiredClassesRec(distributions)
    result = result.deduplicate

var args:seq[string]
var p = initOptParser(commandLineParams().join(" "))
for kind, key, val in p.getopt():
    case kind
    of cmdArgument: args.add key
    of cmdLongOption, cmdShortOption:
        case key.toLowerAscii.replace("_","").replace("-","")
        of "distrs","distributions","printdistributions":
            # echo "# Available distributions"
            echo toSeq(distributions.keys).mapIt(it.splitFile.name).deduplicate.join("\n")
            quit(0)
        of "distr","distribution","printdistribution":
            # echo distributions[val]
            echo val.requiredClassesRec(distributions)
            quit(0)
        else:
            doAssert false, &"Invalid option {key}"
    of cmdEnd: assert(false) # cannot happen

doAssert args.len==3, &"distr.nim expects 3 arguments: xmlInputDir, outputDir, distr"
let 
    # xmlInputDir/{qtcore,qtgui,...}/*.xml should exist
    # xmlInputDir/typeDb.txt should exist
    xmlInputDir = args[0]
    outputDir = args[1] # where to write the xml files to; e.g. qt/6.4.0/qt
    distr = args[2] # One of the available distributions above.

    # Location where all the files will be stored, except for nimqt.nim
    outputDir2 = &"{outputDir}/nimqt/"

doAssert fileExists(xmlInputDir/"typeDb.txt")
doAssert distributions.hasKey(distr), &"Invalid distr {distr}. Choose one from {toSeq(distributions.keys)}."

let db:TypeDb = typeDb.readFromFile(xmlInputDir/"typeDb.txt") # Contains *all* the known types

func unpackTemplates(xs:seq[string]): seq[string] =
    for x in xs:
        if "<" in x: result.add x.replace(">","").split("<").mapIt(it.replace("class ","").strip).filterIt(it notin ["T"])
        else: result.add x

# Figure out all classes that we need to satisfy the distribution.
let 
    # Just the explicitly specified classes
    requiredClasses = distr.requiredClassesRec(distributions)
    requiredTypes:seq[TypeInfo] = requiredClasses.mapIt(db.xs[db.names[it]])

    # Now look the parent classes
    dependentClassNames:seq[string] = requiredTypes.mapIt(db.listBaseClassesRec(it)).concat.filterIt(it.len>0).unpackTemplates.deduplicate
    allRequiredTypes:seq[TypeInfo] = concat(requiredTypes, dependentClassNames.mapIt(db.xs[db.names[it]])).deduplicate

# This database contains only the types available in $allRequiredTypes.
# This will cause all the methods and types that depend on anything that is not present
# in this new database to fail, and hence, will not be included!
let reducedDb:TypeDb = block:
    var result:TypeDb
    # We add all the stuff that's inside a module.
    let allComponentModules=allRequiredTypes.mapIt(&"{it.component}/{it.module}").toHashSet
    for x in db.xs:
        if &"{x.component}/{x.module}" in allComponentModules:
            result.add x
    result

outputDir2.createDir

# Here we copy/symlink the files. We list here the advantages and disadvantages of using symlinks:
# (a) + only one location in which to update nimqt.nim, nimqt_paths.nim and verdigris.
# (b) + nimble install does not copy symlinks, but copies the content
# (c) - Using symlinks sounds nice in theory, but to add verdigris to the include path, we use the path
#       of nimqt.nim. However, nim resolves this path to scripts/nimqt.nim where we do not find the 
#       verdigris directory :(
# (d) - copying creates a standalone structure that can be copied around easily.
# Point (c) makes me use the copy method :(
when false:
    removeFile(&"{outputDir}/nimqt.nim")
    removeFile(&"{outputDir2}/nimqt_paths.nim")
    removeFile(&"{outputDir}/verdigris")

    echo &"Symlink scripts/nimqt.nim to {outputDir}/nimqt.nim"
    createSymLink(src="../../scripts/nimqt.nim", dest = &"{outputDir}/nimqt.nim")

    echo &"Symlink scripts/nimqt_paths.nim to {outputDir2}/nimqt_paths.nim"
    createSymLink(src="../../../scripts/nimqt_paths.nim", dest = &"{outputDir2}/nimqt_paths.nim")

    echo &"Symlink verdigris/src/ to {outputDir}/verdigris/"
    createSymLink(src="../../verdigris/src", dest = &"{outputDir}/verdigris")
else:
    proc myCopyFile(src,dst:string) =
        echo &"Copy {src} to {outputDir/dst}"
        removeFile(&"{outputDir}/{dst}")
        copyFile(source=src, dest = outputDir/dst)
    proc myCopyDir(src,dst:string) =
        echo &"Copy {src} to {outputDir/dst}"
        removeDir(outputDir/dst)
        copyDir(source=src, dest = outputDir/dst)

    myCopyFile("scripts/nimqt.nim", "nimqt.nim")
    myCopyFile("scripts/load_ui.nim", "nimqt/load_ui.nim")
    myCopyFile("scripts/nimqt_paths.nim", "nimqt/nimqt_paths.nim")
    myCopyFile("scripts/typeDb.nim", "nimqt/typeDb.nim")
    myCopyFile("scripts/skips.nim", "nimqt/skips.nim")
    myCopyDir("scripts/tools", "nimqt/tools")
    myCopyDir("verdigris/src", "verdigris")

for t in allRequiredTypes:
    let xmlInputFile = &"{xmlInputDir}/{t.component}/{t.module}.xml"
    let nimOutputFile = &"{outputDir2}/{t.component}/{t.module}.nim"
    let nimOutputFile2 = &"{outputDir2}/{t.module}.nim"

    if nimOutputFile.fileExists and nimOutputFile2.fileExists:
        # echo "Skipping ",nimOutputFile,"\t\t",nimOutputFile2
        continue
    else:
        echo nimOutputFile2,": ",t
    
    # echo "Processing ",nimOutputFile
    let state = State(component:t.component, module:t.module, db:reducedDb)
    let file=xmlInputFile.processFile(state)

    nimOutputFile.splitFile.dir.createDir
    nimOutputFile.writeFile(file.toNimFile(state))

    # This allows us to do 
    # ```import qtcore/qobject``` and
    # ```import qobject```
    nimOutputFile2.writeFile((&"""
        import nimqt/{t.component}/{t.module}
        export {t.module}
        """).dedent)
