const headerFile* = "QtCore/qobjectdefs.h"

type
    # Classes found in the C++ code
    QMethodRawArguments* {.header:headerFile,importcpp:"QMethodRawArguments" ,pure,inheritable.} = object
    QGenericArgument* {.header:headerFile,importcpp:"QGenericArgument" ,pure,inheritable.} = object
    QGenericReturnArgument* {.header:headerFile,importcpp:"QGenericReturnArgument" ,pure.} = object of QGenericArgument
    QArgument*[T] {.header:headerFile,importcpp:"QArgument" ,pure.} = object of QGenericArgument
    QReturnArgument*[T] {.header:headerFile,importcpp:"QReturnArgument" ,pure.} = object of QGenericReturnArgument
    Connection* {.header:headerFile,importcpp:"Connection" ,pure,inheritable.} = object

# Stuff for class QGenericArgument

# Public constructors for QGenericArgument
# 2 default parameters!
proc newQGenericArgument*(aName: ptr char, aData: ptr): ptr QGenericArgument {. header:headerFile, importcpp:"new QGenericArgument(@)" .} #
proc newQGenericArgument*(aName: ptr char): ptr QGenericArgument {. header:headerFile, importcpp:"new QGenericArgument(@)" .} #
proc newQGenericArgument*(): ptr QGenericArgument {. header:headerFile, importcpp:"new QGenericArgument(@)" .} #

# Public methods for QGenericArgument
proc data*(this: ptr QGenericArgument): ptr  {.header:headerFile, importcpp:"#.data(@)".} # Public
proc name*(this: ptr QGenericArgument): ptr char {.header:headerFile, importcpp:"#.name(@)".} # Public
# Stuff for class QGenericReturnArgument

# Public constructors for QGenericReturnArgument
# 2 default parameters!
proc newQGenericReturnArgument*(aName: ptr char, aData: ptr): ptr QGenericReturnArgument {. header:headerFile, importcpp:"new QGenericReturnArgument(@)" .} #
proc newQGenericReturnArgument*(aName: ptr char): ptr QGenericReturnArgument {. header:headerFile, importcpp:"new QGenericReturnArgument(@)" .} #
proc newQGenericReturnArgument*(): ptr QGenericReturnArgument {. header:headerFile, importcpp:"new QGenericReturnArgument(@)" .} #
# Stuff for class QArgument

# Public constructors for QArgument
proc newQArgument*[T](aName: ptr char, aData: T): ptr QArgument[T] {. header:headerFile, importcpp:"new QArgument(@)" .} #
# Stuff for class QReturnArgument

# Public constructors for QReturnArgument
proc newQReturnArgument*[T](aName: ptr char, aData: T): ptr QReturnArgument[T] {. header:headerFile, importcpp:"new QReturnArgument(@)" .} #
# Stuff for class Connection

# Public constructors for Connection
proc newConnection*(): Connection {. header:headerFile, importcpp:"Connection(@)", constructor .} #

