version="0.1"
author="jerous"
description="Qt bindings for nim"
license="GPLv2 or GPLv3"

backend = "cpp"
requires "nim >= 1.6.10"
requires "https://github.com/krux02/ast-pattern-matching"

srcDir="qt/6.4.2_gui_widgets"

doAssert defined(linux) or defined(macosx) or defined(windows), "nimqt is not tested on this system"
