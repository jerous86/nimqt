import strutils
import os
import osproc
import strformat

const static_QMAKE=block:
    # os.findExe cannot be executed at compiletime, due to it using readLink.
    proc static_findExe(exe:string; extensions: openArray[string]=os.ExeExts): string =
        if exe.len == 0: return

        template checkCurrentDir() =
            for ext in extensions:
                result = addFileExt(exe, ext)
                if fileExists(result): return

        when defined(posix):
            if '/' in exe: checkCurrentDir()
        else:
            checkCurrentDir()

        for candidate in split(getEnv("PATH"), PathSep):
            if candidate.len == 0: continue

            when defined(windows):
                var x = (if candidate[0] == '"' and candidate[^1] == '"': substr(candidate, 1, candidate.len-2) else: candidate) / exe
            else:
                var x = expandTilde(candidate) / exe

            for ext in extensions:
                var x = addFileExt(x, ext)
                if fileExists(x): return x
        result = ""

    const path=os.getEnv("QMAKE_PATH", "qmake")
    const exe=static_findExe(path)
    assert exe.fileExists, &"compile-time: cannot find the `qmake` binary (path:'{path}', exe:'{exe}'). Point the environment variable QMAKE_PATH to it or make sure `qmake` is in PATH."
    exe
let runtime_QMAKE=block:
    let path=os.getEnv("QMAKE_PATH", "qmake")
    let exe=os.findExe(path)
    assert exe.fileExists, &"run-time: cannot find the `qmake` binary (path:'{path}', exe:'{exe}'). Point the environment variable QMAKE_PATH to it or make sure `qmake` is in PATH."
    exe

proc replace_vars*(s:string, allow_run_time:static bool, enable_path_check:bool): string =
    proc todo_os(key:string): string {.used.} =
        doAssert false, &"TODO: {key} for this OS!"
        ""

    proc check_path(path:string): string =
        when allow_run_time:
            if enable_path_check:
                # These *Exists is not available at compile time, so we allow disabling them
                doAssert symlinkExists(path) or fileExists(path) or dirExists(path), &"\n>> {path} << does not exist"
        path

    proc myExec(cmd:string): string =
        when allow_run_time: 
            let (output,exitCode) = execCmdEx(cmd)
            if exitCode != 0:
                echo &"nimqt_paths: >> {cmd} << failed with exitCode {exitCode}"
            output
        else: 
            # NOTE: staticExec does not return an exitCode, so this branch
            # behaves a little different than the other branch.
            staticExec(cmd)

    # using nre.replace would be a bit cleaner, but then we cannot use this proc at compile time :(
    var i=0
    result=s
    while i<result.len and i>=0:
        i=result.find("${", i)
        if i<0: break
        let i2=result.find("}",i)
        let varName=result[i+2..<i2].toLowerAscii.replace("_","").replace("-","")

        let replacement=(case varName
            of "qtversion": 
                # The Qt version that we are using
                when allow_run_time: myExec(runtime_QMAKE & " -query QT_VERSION").strip
                else: myExec(static_QMAKE & " -query QT_VERSION").strip
            of "qtroot": 
                # The directory in which Qt libraries and headers reside
                when allow_run_time: myExec(runtime_QMAKE & " -query QT_INSTALL_LIBS").strip
                else: myExec(static_QMAKE & " -query QT_INSTALL_LIBS").strip
            of "qtinstalllibs": 
                # The directory in which Qt libraries and headers reside
                when allow_run_time: myExec(runtime_QMAKE & " -query QT_INSTALL_LIBS").strip
                else: myExec(static_QMAKE & " -query QT_INSTALL_LIBS").strip
            of "qtinstallheaders":
                # The directory in which Qt headers reside
                when allow_run_time: myExec(runtime_QMAKE & " -query QT_INSTALL_HEADERS").strip
                else: myExec(static_QMAKE & " -query QT_INSTALL_HEADERS").strip
 

            # The following directories are in which the header file for a module resides
            of "qtcoreheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtCore.framework/Headers/",allow_run_time,enable_path_check))
                elif defined(linux) or defined(bsd) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtCore/",allow_run_time,enable_path_check))
                else: todo_os "QtCore_header_dir"
            of "qtguiheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtGui.framework/Headers/",allow_run_time,enable_path_check))
                elif defined(linux) or defined(bsd) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtGui/",allow_run_time,enable_path_check))
                else: todo_os "QtGui_header_dir"
            of "qtwidgetsheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtWidgets.framework/Headers/",allow_run_time,enable_path_check))
                elif defined(linux) or defined(bsd) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtWidgets/",allow_run_time,enable_path_check))
                else: todo_os "QtWidgets_header_dir"
            of "qtqmlcoreheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtQmlCore.framework/Headers/",allow_run_time,enable_path_check))
                elif defined(linux) or defined(bsd) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtQmlCore/",allow_run_time,enable_path_check))
                else: todo_os "QtQmlCore_header_dir"
            of "qtqmlheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtQml.framework/Headers/",allow_run_time,enable_path_check))
                elif defined(linux) or defined(bsd) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtQml/",allow_run_time,enable_path_check))
                else: todo_os "QtQml_header_dir"
            of "qtuitoolsheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtUiTools.framework/Headers/",allow_run_time,enable_path_check))
                elif defined(linux) or defined(bsd) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtUiTools/",allow_run_time,enable_path_check))
                else: todo_os "QtUiTools_header_dir"


            # LLVM is used in cpp2xml.nim
            of "llvmroot":
                when defined(macosx):
                    # Assume LLVM is installed by homebrew. Then it is
                    # installed under /usr/local/Cellar/llvm/${LLVM_VERSION}
                    # Additionally, I think /usr/local/opt/llvm symlinks to this dir,
                    # so we return /usr/local/opt/llvm/
                    checkPath("/usr/local/opt/llvm")
                else: todo_os "LLVM_root"

            of "llvmlibdir":
                when defined(macosx): checkPath(replace_vars("${LLVM_root}/lib",allow_run_time,enable_path_check))
                elif defined(linux) or defined(bsd): checkPath(myExec("""llvm-config --libdir"""))
                else: todo_os "LLVM_root"



            else:
                doAssert false, &"Cannot handle variable '{varName}'"
                ""
            )
        result=(if i>0: result[0..<i] else: "") & replacement & (if i2+1<result.len: result[i2+1..^1] else: "")


when isMainModule:
    import parseopt

    var 
        enable_path_check=true

    var p = initOptParser(commandLineParams().join(" "))
    for kind, key, val in p.getopt():
        case kind
        of cmdArgument: 
            if "${" in key: echo replace_vars(key, allow_run_time=true, enable_path_check=enable_path_check)
            else: echo replace_vars("${"&key&"}", allow_run_time=true, enable_path_check=enable_path_check)
        of cmdLongOption, cmdShortOption:
            case key.toLowerAscii.replace("_","").replace("-","")
            of "disablepathcheck": enable_path_check=false
            of "enablepathcheck": enable_path_check=true
            else: discard
        of cmdEnd: assert(false) # cannot happen
