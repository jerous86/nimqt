const headerFile* = "QtCore/q20functional.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}
when (NimMajor, NimMinor, NimPatch) < (1, 9, 0):
    type
        # Classes found in the C++ code
        q20_identity* {.header:headerFile,importcpp:"q20::identity" ,pure.} = object {.inheritable.}
        q20_identity_is_transparent* {.header:headerFile,importcpp:"q20::identity::is_transparent" ,pure.} = object {.inheritable.}
        q20_remove_cvref*[T] {.header:headerFile,importcpp:"q20::remove_cvref" ,pure.} = object {.inheritable.}
elif (NimMajor, NimMinor, NimPatch) >= (1, 9, 0):
    type
        # Classes found in the C++ code
        q20_identity* {.header:headerFile,importcpp:"q20::identity" ,pure,inheritable.} = object
        q20_identity_is_transparent* {.header:headerFile,importcpp:"q20::identity::is_transparent" ,pure,inheritable.} = object
        q20_remove_cvref*[T] {.header:headerFile,importcpp:"q20::remove_cvref" ,pure,inheritable.} = object
{.push warning[Deprecated]: on.}


