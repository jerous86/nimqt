import strutils
import os
import osproc
import strformat

proc replace_vars*(s:string, allow_run_time:static bool): string =
    proc todo_os(key:string): string {.used.} =
        doAssert false, &"TODO: {key} for this OS!"
        ""

    proc check_path(path:string): string =
        when allow_run_time:
            # These *Exists is not available at compile time, so we allow disabling them
            doAssert symlinkExists(path) or fileExists(path) or dirExists(path), &"{path} does not exist"
        path

    proc myExec(cmd:string): string =
        when allow_run_time: 
            let (output,exitCode) = execCmdEx(cmd)
            if exitCode != 0:
                echo &"nimqt_paths: >> {cmd} << failed with exitCode {exitCode}"
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
                myExec("""sh -c "qmake6 -v | grep -o '[0-9]*\.[0-9]*\.[0-9]*'" """).strip
            of "qtroot": 
                # The directory in which Qt libraries and headers reside
                myExec("""sh -c "qmake6 -v | grep Using | grep -o '/.*'" """).strip
            of "qtinstallheaders":
                # The directory in which Qt headers reside
                myExec("""qtpaths --query QT_INSTALL_HEADERS""").strip
 

            # The following directories are in which the header file for a module resides
            of "qtcoreheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtCore.framework/Headers/",allow_run_time))
                elif defined(linux) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtCore/",allow_run_time))
                else: todo_os "QtCore_header_dir"
            of "qtguiheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtGui.framework/Headers/",allow_run_time))
                elif defined(linux) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtGui/",allow_run_time))
                else: todo_os "QtGui_header_dir"
            of "qtwidgetsheaderdir": 
                when defined(macosx): checkPath(replace_vars("${Qt_root}/QtWidgets.framework/Headers/",allow_run_time))
                elif defined(linux) or defined(windows): checkPath(replace_vars("${Qt_install_headers}/QtWidgets/",allow_run_time))
                else: todo_os "QtWidgets_header_dir"


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
                when defined(macosx): checkPath(replace_vars("${LLVM_root}/lib",allow_run_time))
                elif defined(linux): checkPath(myExec("""llvm-config --libdir"""))
                else: todo_os "LLVM_root"



            else:
                doAssert false, &"Cannot handle variable '{varName}'"
                ""
            )
        result=(if i>0: result[0..<i] else: "") & replacement & (if i2+1<result.len: result[i2+1..^1] else: "")


when isMainModule:
    import parseopt

    var p = initOptParser(commandLineParams().join(" "))
    for kind, key, val in p.getopt():
        case kind
        of cmdArgument: 
            if "${" in key: echo replace_vars(key, allow_run_time=true)
            else: echo replace_vars("${"&key&"}", allow_run_time=true)
        of cmdLongOption, cmdShortOption: assert(false)
        of cmdEnd: assert(false) # cannot happen
