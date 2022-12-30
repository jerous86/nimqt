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
        requiredClasses: seq[string]

const distributions={
    "test": Distribution(
        requiredClasses: @["QObject","QString","QWidget", "QKeyCombination"]
        ),
    # Provides a set of the most useful modules to create a GUI, together with a limited
    # set of modules from QtCore.
    "minimal": Distribution(
        # We can list here just the class names, as they are (in general) unique
        # Note that we have added some additional classes, due to some code in
        # customization_footer which depends also on some types.
        requiredClasses: @[
            # QtCore
            "QObject","QString","QEvent","QList","QFlag","QFlags","QByteArray","QStringList",
            "QPoint","QPointF","QRect","QRectF","QSize","QSizeF",
            "QUrl","QVariant",
            
            # QtGui
            "QAction","QBrush","QClipboard","QColor","QCursor","QFont","QFontInfo","QFontMetrics",
            "QGuiApplication","QIcon","QImage",
            "QHideEvent","QHoverEvent","QInputEvent","QKeyEvent","QMouseEvent","QMoveEvent",
            "QNativeGestureEvent","QPaintDevice","QPaintEvent","QPainter","QPen","QPicture",
            "QPixmap","QPolygon","QPolygonF","QResizeEvent","QShortcutEvent","QShowEvent",
            "QTextCursor","QTextDocument","QTextFormat","QWheelEvent","QWindow",
            
            # QtWidget
            "QApplication","QBoxLayout","QVBoxLayout","QHBoxLayout","QGridLayout","QFormLayout",
            "QLayoutItem","QSizePolicy","QSpacerItem","QStackedLayout","QStackedWidget","QWidgetItem",
            "QTextBrowser",
            # Basic widget classes
            "QCheckBox","QComboBox","QCommandLinkButton","QDateEdit","QDateTimeEdit","QDial",
            "QDoubleSpinBox","QFocusFrame","QFontComboBox","QLCDNumber","QLabel","QLineEdit",
            "QMenu","QProgressBar","QPushButton","QRadioButton","QScrollArea","QScrollBar",
            "QSizeGrip","QSlider","QSpinBox","QTabBar","QTabWidget","QTimeEdit","QToolBox",
            "QToolButton","QWidget",
            # Advanced widget classes
            "QCalendarWidget",
            # Organizer widget classes
            "QButtonGroup","QGroupBox","QSplitter","QSplitterHandle","QStackedWidget","QTabWidget",
            # Graphics view classes
            # Model/View classes
            "QListWidget","QListWidgetItem","QTableWidget","QTableWidgetItem","QTreeWidget","QTreeWidgetItem",
            # Main window and related classes
            "QDockWidget","QMainWindow","QMenuBar","QStatusBar","QToolBar","QWidgetAction",

            # Misc
            "QKeyCombination", # forces an import of QNamespace
            ]
        )
    }.toTable

var args:seq[string]
var p = initOptParser(commandLineParams().join(" "))
for kind, key, val in p.getopt():
    case kind
    of cmdArgument: args.add key
    of cmdLongOption, cmdShortOption:
        case key.toLowerAscii.replace("_","").replace("-","")
        of "distr","distrs","distributions","printdistributions":
            # echo "# Available distributions"
            echo toSeq(distributions.keys).join("\n")
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

let 
    distribution = distributions[distr]
    # Figure out all classes that we need to satisfy the distribution.
    requiredTypes:seq[TypeInfo] = distribution.requiredClasses.mapIt(db.xs[db.names[it]])
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

when true:
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
    # I used to think it's better to create a copy of the file, so we have a
    # standalone directory, and do not depend too much on the hierarchy.
    # However, when doing nimble install, symlinks are resolved, and 
    # no symlinks remain. So I think it's better to keep the symilnks in the repo
    # as then there's only one single source for nimqt.nim and nimqt_paths.nim
    removeFile(&"{outputDir}/qt.nim")
    removeFile(&"{outputDir2}/nimqt_paths.nim")

    echo &"Copy scripts/qt.nim to {outputDir}/nimqt.nim"
    copyFile(source="scripts/qt.nim", dest = &"{outputDir}/nimqt.nim")

    echo &"Copy scripts/paths.nim to {outputDir2}/nimqt_paths.nim"
    copyFile(source="scripts/paths.nim", dest = &"{outputDir2}/nimqt_paths.nim")

    echo &"Copy verdigris/src/ to {outputDir}/verdigris/"
    copyDir(source="verdigris/src", dest = &"{outputDir}/verdigris")

for t in allRequiredTypes:
    let xmlInputFile = &"{xmlInputDir}/{t.component}/{t.module}.xml"
    let nimOutputFile = &"{outputDir2}/{t.component}/{t.module}.nim"
    let nimOutputFile2 = &"{outputDir2}/{t.module}.nim"

    if nimOutputFile.fileExists and nimOutputFile2.fileExists:
        # echo "Skipping ",nimOutputFile,"\t\t",nimOutputFile2
        continue
    else:
        echo t
    
    # echo "Processing ",nimOutputFile
    let state = State(component:t.component, module:t.module, db:reducedDb)
    let file=xmlInputFile.processFile(state)

    nimOutputFile.splitFile.dir.createDir
    nimOutputFile.writeFile(file.toNimFile(state))

    # This allows us to do 
    # ```import qtcore/qobject``` and
    # ```import qobject```
    (&"{outputDir2}/{t.module}.nim").writeFile((&"""
        import nimqt/{t.component}/{t.module}
        export {t.module}
        """).dedent)