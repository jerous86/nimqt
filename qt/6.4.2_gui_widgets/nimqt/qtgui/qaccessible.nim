const headerFile* = "QtGui/qaccessible.h"

# Disable 'Warning: type pragmas follow the type name; this form of writing pragmas is deprecated'
{.push warning[Deprecated]: off.}


type
    # Classes and enums found in the C++ code
    # Global
    QAccessibleTableModelChangeEvent_ModelChangeType* {.header:headerFile,importcpp:"QAccessibleTableModelChangeEvent::ModelChangeType".} = enum ModelReset = 0, DataChanged = 0x1, RowsInserted = 0x2, ColumnsInserted = 0x3, 
        RowsRemoved = 0x4, ColumnsRemoved = 0x5
    QAccessibleInterface* {.header:headerFile,importcpp:"QAccessibleInterface" ,pure.} = object {.inheritable.}
    QAccessibleTextInterface* {.header:headerFile,importcpp:"QAccessibleTextInterface" ,pure.} = object {.inheritable.}
    QAccessibleEditableTextInterface* {.header:headerFile,importcpp:"QAccessibleEditableTextInterface" ,pure.} = object {.inheritable.}
    QAccessibleValueInterface* {.header:headerFile,importcpp:"QAccessibleValueInterface" ,pure.} = object {.inheritable.}
    QAccessibleTableCellInterface* {.header:headerFile,importcpp:"QAccessibleTableCellInterface" ,pure.} = object {.inheritable.}
    QAccessibleTableInterface* {.header:headerFile,importcpp:"QAccessibleTableInterface" ,pure.} = object {.inheritable.}
    QAccessibleActionInterface* {.header:headerFile,importcpp:"QAccessibleActionInterface" ,pure.} = object {.inheritable.}
    QAccessibleImageInterface* {.header:headerFile,importcpp:"QAccessibleImageInterface" ,pure.} = object {.inheritable.}
    QAccessibleHyperlinkInterface* {.header:headerFile,importcpp:"QAccessibleHyperlinkInterface" ,pure.} = object {.inheritable.}
    QAccessibleEvent* {.header:headerFile,importcpp:"QAccessibleEvent" ,pure.} = object {.inheritable.}
    QAccessibleStateChangeEvent* {.header:headerFile,importcpp:"QAccessibleStateChangeEvent" ,pure.} = object of QAccessibleEvent
    QAccessibleTextCursorEvent* {.header:headerFile,importcpp:"QAccessibleTextCursorEvent" ,pure.} = object of QAccessibleEvent
    QAccessibleTextSelectionEvent* {.header:headerFile,importcpp:"QAccessibleTextSelectionEvent" ,pure.} = object of QAccessibleTextCursorEvent
    QAccessibleTextInsertEvent* {.header:headerFile,importcpp:"QAccessibleTextInsertEvent" ,pure.} = object of QAccessibleTextCursorEvent
    QAccessibleTextRemoveEvent* {.header:headerFile,importcpp:"QAccessibleTextRemoveEvent" ,pure.} = object of QAccessibleTextCursorEvent
    QAccessibleTextUpdateEvent* {.header:headerFile,importcpp:"QAccessibleTextUpdateEvent" ,pure.} = object of QAccessibleTextCursorEvent
    QAccessibleValueChangeEvent* {.header:headerFile,importcpp:"QAccessibleValueChangeEvent" ,pure.} = object of QAccessibleEvent
    QAccessibleTableModelChangeEvent* {.header:headerFile,importcpp:"QAccessibleTableModelChangeEvent" ,pure.} = object of QAccessibleEvent
{.push warning[Deprecated]: on.}

