import nimqt
import nimqt/[
        qpushbutton, qboxlayout]
nimqt.init

let app = newQApplication()

inheritQObject(
        Receiver, QObject):
    slot_decl on_helloWorld_clicked()

let receiver = newReceiver()
let win: ptr QWidget = newQWidget()

win.makeLayout:
    - newQPushButton(
            Q "Click me!!"):
        connect(SIGNAL "clicked()",
                receiver,
                SLOT "on_helloWorld_clicked()")
    - newQPushButton(
            Q "Click me!!"):
        connect(SIGNAL "clicked()",
                receiver,
                SLOT "on_helloWorld_clicked()")

proc on_helloWorld_clicked(
    this: ptr Receiver) =
    let sender = cast[
            ptr QPushButton](
            this.get_sender())
    sender.setText(
            Q "Hello world!")

win.show()
discard app.exec()

