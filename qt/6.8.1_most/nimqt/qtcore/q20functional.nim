const headerFile* = "QtCore/q20functional.h"

type
    # Classes found in the C++ code
    q20_identity* {.header:headerFile,importcpp:"q20::identity" ,pure,inheritable.} = object
    q20_identity_is_transparent* {.header:headerFile,importcpp:"q20::identity::is_transparent" ,pure,inheritable.} = object
    q20_remove_cvref*[T] {.header:headerFile,importcpp:"q20::remove_cvref" ,pure,inheritable.} = object


