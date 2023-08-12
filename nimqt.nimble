version="0.2"
author="jerous"
description="Qt bindings for nim"
license="GPLv2 or GPLv3"

backend = "cpp"
requires "nim >= 2.0.0"
requires "astpatternmatching"

srcDir="qt/6.4.3_most"

doAssert defined(linux) or defined(bsd) or defined(macosx) or defined(windows), "nimqt is not tested on this system"
