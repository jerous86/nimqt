version="0.1"
author="jerous"
description="Qt bindings for nim"
license="GPLv2 or GPLv3"

backend = "cpp"
requires "nim >= 1.6.10"
requires "astpatternmatching"

srcDir="qt/6"

doAssert defined(linux) or defined(bsd) or defined(macosx) or defined(windows), "nimqt is not tested on this system"
