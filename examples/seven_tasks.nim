# https://eugenkiss.github.io/7guis/tasks

import os
import strformat
import strutils
import sequtils
import options

import nimqt
nimqt.init

let app = newQApplication(commandLineParams())

import nimqt/[qlabel, qtextedit, qpushbutton, qcheckbox, qlineedit, qtabwidget, qcombobox, qslider, qprogressbar, qtimer, qlistwidget, qlistview, qstringlistmodel, qstringlist, qlist]
import nimqt/[qtablewidget,qstyleditemdelegate]
import nimqt/qsortfilterproxymodel
import nimqt/qabstractitemview
import nimqt/qdatetime
import nimqt/qtwidgets/[qgridlayout,qlayoutitem]
import nimqt/qmenu

import sheet

func parseFloat(s:QString):float = (try: ($s).parseFloat except CatchableError: 0.0)
func parseInt(s:QString):int = (try: ($s).parseInt except CatchableError: 0)
func degCToF(c:float):float = c*(9/5)+32
func degFToC(f:float):float = int((f-32)*(5/9)*100).float/100.0

let win: ptr QWidget = newQWidget()
win.makeLayout:
    - newQTabWidget() as tabWidget:
        let 
            tabCounter = newQWidget()
            tabTempConverter = newQWidget()
            tabFlightBooker = newQWidget()
            tabTimer = newQWidget()
            tabCRUD = newQWidget()
            tabCircles = newQWidget()
            tabSheet = newQWidget()
        
        discardThis:
            tabCounter.makeLayoutH:
                - newQLabel(Q"0") as lblCounter
                - newQPushButton(Q"Count"):
                    handleSignal0(SIGNAL "clicked()"): lblCounter.setText(Q($(lblCounter.text.parseInt+1)))
        
        discardThis:
            tabTempConverter.makeLayoutH:
                - newQLineEdit(Q"") as txtDegC:
                    handleSignal1(SIGNAL "textChanged()", newText:QString):
                        txtDegF.blockSignalsTmp:
                            txtDegF.setText(Q($newText.parseFloat.degCToF))
                - newQLabel(Q"Celsius")
                - newQLineEdit(Q"") as txtDegF:
                    handleSignal1(SIGNAL "textChanged(const QString &)", newText:QString):
                        txtDegC.blockSignalsTmp:
                            txtDegC.setText(Q($newText.parseFloat.degFToC))
                - newQLabel(Q"Fahrenheit")
            txtDegC.setText(Q"0")
        
        discardThis:
            const DateFormat="yyyy-MM-dd"
            func parseDate(str:QString):QDate = static_QDate_fromString(str, Q DateFormat, newQCalendar())
            proc flightUpdateBtnFlightBook()
            
            tabFlightBooker.makeLayout:
                - newQComboBox() as cmbFlightDir:
                    addItem(Q"one-way flight")
                    addItem(Q"return flight")
                    handleSignal1(SIGNAL "currentIndexChanged(int)", index:int): flightUpdateBtnFlightBook()
                - newQLineEdit() as txtFlightDate1:
                    setPlaceholderText(Q"YYYY-MM-DD")
                    setText(static_QDate_currentDate().toString(Q DateFormat, newQCalendar()))
                    handleSignal1(SIGNAL "textChanged(const QString &)", newText:QString): flightUpdateBtnFlightBook()
                - newQLineEdit() as txtFlightDate2:
                    setPlaceholderText(Q"YYYY-MM-DD")
                    setText(static_QDate_currentDate().toString(Q DateFormat, newQCalendar()))
                    handleSignal1(SIGNAL "textChanged(const QString &)", newText:QString): flightUpdateBtnFlightBook()
                - newQPushButton(Q"Book") as btnFlightBook:
                    setEnabled(false)
                    handleSignal0(SIGNAL "clicked()"):
                        if cmbFlightDir.currentIndex==0:
                            echo("You have booked a " & $cmbFlightDir.currentText & " on " & $txtFlightDate1.text)
                        elif cmbFlightDir.currentIndex==1:
                            echo("You have booked a " & $cmbFlightDir.currentText & " on " & $txtFlightDate1.text & ", returning " & $txtFlightDate2.text)
            proc flightUpdateBtnFlightBook() =
                proc setBackgroundColor(o:ptr QLineEdit, q:QColor) =
                    let p=newQPalette()
                    p.setColor(QPalette_ColorRole.Base, q)
                    o.setPalette(p)
                let
                    date1=txtFlightDate1.text.parseDate
                    date2=txtFlightDate2.text.parseDate
                txtFlightDate1.setBackgroundColor(newQColor(if date1.isValid: Qt_GlobalColor.white else: Qt_GlobalColor.red))
                txtFlightDate2.setBackgroundColor(newQColor(if date2.isValid: Qt_GlobalColor.white else: Qt_GlobalColor.red))
                
                txtFlightDate2.setEnabled(cmbFlightDir.currentIndex>=1)
                if cmbFlightDir.currentIndex==0:
                    btnFlightBook.setEnabled(date1.isValid)
                elif cmbFlightDir.currentIndex==1:
                    btnFlightBook.setEnabled(date1.isValid and date2.isValid and date1.daysTo(date2)>=0)
            
            flightUpdateBtnFlightBook()
        
        discardThis:
            proc onTimerUpdate()
            let timeTimer=newQTimer()
            
            tabTimer.makeLayout:
                - newQLabel(Q"Elapsed time")
                - newQProgressBar() as progTime: setMaximum(32000)
                - newQLabel(Q"(Elapsed time)") as lblTimeElapsed
                - newQLabel(Q"Duration")
                - newQSlider(Horizontal) as sliderTime:
                    discardThis: onTimerUpdate()
                    setMaximum(32000)
                    handleSignal1(SIGNAL "valueChanged(int)", value:int): onTimerUpdate()
                - newQPushButton(Q"Reset") as btnReset:
                    discardThis: onTimerUpdate()
                    handleSignal0(SIGNAL "clicked()"):
                        progTime.setValue(0)
                        onTimerUpdate()
            
            proc onTimerUpdate() =
                lblTimeElapsed.setText(Q($progTime.value & "ms"))
                if progTime.value>=sliderTime.value:
                    timeTimer.stop
                elif timeTimer.isActive==false:
                    timeTimer.start(1) # 1ms
                
            timeTimer.handleSignal0(SIGNAL "timeout()"):
                progTime.setValue(progTime.value+1)
                onTimerUpdate()
            onTimerUpdate()
        
        discardThis:
            proc onRowSelected(r:int)
            
            let
                db=newQStringList()
                dbModel=newQStringListModel()
                proxyModel=newQSortFilterProxyModel()
            db.add Q"Nahasapeemapetilon, Apu"
            db.add Q"Simpson, B"
            db.add Q"Simpson, H"
            dbModel.setStringList(db)
            proxyModel.setSourceModel(dbModel)
            
            tabCRUD.makeLayout:
                - newQWidget():
                    - newQGridLayout():
                        - newQLabel(Q"Filter prefix") at (0,0)
                        - newQLineEdit() at (0,1):
                            setPlaceholderText(Q"Filter prefix")
                            handleSignal1(SIGNAL "textChanged(const QString &)", newText:QString):
                                proxyModel.setFilterRegularExpression(Q("^" & $newText))
                                onRowSelected(-1)
                            
                        - newQListView() as crudView at (1,0,4,2):
                            setEditTriggers(newQFlags(NoEditTriggers))
                            setModel(proxyModel)
                            # TODO this requires QModelIndex to be not inheritable. Without it it will create a poitner instead of a reference
                            handleSignal1(SIGNAL "clicked(const QModelIndex &)", idx:QModelIndex): onRowSelected(idx.row)
                            handleSignal1(SIGNAL "activated(const QModelIndex &)", idx:QModelIndex): onRowSelected(idx.row)
                        - newQLabel(Q"Name") at (1,2)
                        - newQLineEdit() as txtCRUDName at (1,3):
                            setPlaceholderText(Q"Name")
                            setText(Q"Doe")
                            
                        - newQLabel(Q"Surname") at (2,2)
                        - newQLineEdit() as txtCRUDSurname at (2,3):
                            setPlaceholderText(Q"Surname")
                            setText(Q"John")
                            
                        - newQPushButton(Q"Create") at (5,0):
                            handleSignal0(SIGNAL "clicked()"):
                                db.add(Q($txtCRUDName.text & ", " & $txtCRUDSurname.text))
                                dbModel.setStringList(db)
                                txtCRUDName.setText(Q"")
                                txtCRUDSurname.setText(Q"")
                        - newQPushButton(Q"Update") as btnCRUDUpdate at (5,1):
                            handleSignal0(SIGNAL "clicked()"):
                                db.replace(crudView.currentIndex.row, Q($txtCRUDName.text & ", " & $txtCRUDSurname.text))
                                dbModel.setStringList(db)
                                onRowSelected(-1)
                        - newQPushButton(Q"Delete") as btnCRUDDelete at (5,2):
                            handleSignal0(SIGNAL "clicked()"):
                                db.remove crudView.currentIndex.row
                                dbModel.setStringList(db)
                                onRowSelected(-1)
            proc onRowSelected(r:int) =
                let ok=r>=0 and r<db.len
                if ok:
                    let pts=($db[r.cint]).split(", ")
                    if pts.len==2:
                        txtCRUDName.setText(Q pts[0])
                        txtCRUDSurname.setText(Q pts[1])
                
                btnCRUDUpdate.setEnabled(ok)
                btnCRUDDelete.setEnabled(ok)
            onRowSelected(-1)
        
        discardThis:
            type
                Circle = tuple[x,y:int,r:int]
                Pos = tuple[x,y:int]
            var
                circles:seq[Circle]
                selectedCircle = -1
                adjustedCircle = -1
                curR=20
            let
                circleWgSlider=newQWidget()
                circleMenu=newQMenu(Q"Circle")
                circleMenuAdjustDiameter=newQAction(Q"Adjust diameter ...")
            circleMenu.addAction(circleMenuAdjustDiameter)
            
            func insideCircle(circles:seq[Circle], p:Pos): int =
                for i,c in circles:
                    if (p.x-c.x)*(p.x-c.x)+(p.y-c.y)*(p.y-c.y) <= c.r*c.r: return i
                -1
            inheritQObject(CirclesWidget, QWidget):
                override mousePressEvent(event: ptr QMouseEvent):
                    let pos=(x:event.position.x.int, y:event.position.y.int)
                    let i=circles.insideCircle(pos)
                    if event.button()==LeftButton:
                        if i < 0:
                            circles.add (x:pos.x, y:pos.y, r:curR)
                            this.update
                    elif event.button()==RightButton:
                        if i>=0:
                            adjustedCircle=i
                            circleMenu.popup(this.mapToGlobal(newQPoint(pos.x.cint, pos.y.cint)))
                override mouseMoveEvent(event: ptr QMouseEvent):
                    let pos=(x:event.position.x.int, y:event.position.y.int)
                    let i=circles.insideCircle(pos)
                    if selectedCircle != i:
                        selectedCircle=i
                        this.update
                override paintEvent(event: ptr QPaintEvent):
                    let painter=newQPainter(cast[ptr QPaintDevice](this))
                    for i,c in circles:
                        if i==selectedCircle:
                            painter.setBrush(newQBrush(newQColor(gray), SolidPattern))
                        else:
                            painter.setBrush(newQBrush(newQColor(black), NoBrush))
                            
                        painter.drawEllipse(newQPointF(c.x.cfloat, c.y.cfloat), c.r.cfloat, c.r.cfloat)
            
            tabCircles.makeLayout:
                - newQWidget():
                    - newQGridLayout():
                        - newQPushButton(Q"Undo") as btnCirclesUndo at (0,1)
                        - newQPushButton(Q"Redo") as btnCirclesRedo at (0,2)
                        - newCirclesWidget() as wgCircles at (1,0,1,4):
                            setMouseTracking(true)
        
            circleWgSlider.makeLayout:
                #setParent(wgCircles)
                setWindowModality(ApplicationModal)
                - newQLabel(Q"Adjust diameter") as circleSliderLabel
                - newQSlider(Horizontal) as circleSlider:
                    setMinimum(5.cint)
                    setMaximum(50.cint)
                    handleSignal1(SIGNAL "valueChanged(int)", value:int):
                        circles[adjustedCircle].r=value
                        let c=circles[adjustedCircle]
                        circleSliderLabel.setText(Q(&"Adjust diameter of circle at ({c.x}, {c.y})"))
                        wgCircles.update
            circleMenuAdjustDiameter.handleSignal0(SIGNAL "triggered()"):
                circleWgSlider.show
                let c=circles[adjustedCircle]
                circleSlider.setValue(c.r.cint)
                
            
        discardThis:
            proc updateSheet()
            inheritQObject(SheetItem, QStyledItemDelegate):
                const_override setEditorData(editor: ptr QWidget, index: const_var QModelIndex):
                    cast[ptr QLineEdit](editor).setText(Q defaultSheet.get(CellPos(r:index.row.int, c:index.column.int)).fm)
                const_override setModelData(editor: ptr QWidget, model:ptr QAbstractItemModel, index: const_var QModelIndex): 
                    defaultSheet.setFormula(CellPos(r:index.row.int, c:index.column.int), $cast[ptr QLineEdit](editor).text)
                    updateSheet()

            tabSheet.makeLayoutH:
                - newQTableWidget() as tblSheet:
                    setRowCount(numRows)
                    setColumnCount(numCols)
                    setHorizontalHeaderLabels(('A'..'Z').mapIt($it).newQStringList)
                    setVerticalHeaderLabels((0..<numRows).mapIt($it).newQStringList)
                    setItemDelegate(newSheetItem())
        
            proc updateSheet() =
                tblSheet.blockSignalsTmp:
                    for r in 0..<numRows:
                        for c in 0..<numCols:
                            let cell:Cell=defaultSheet.get(CellPos(r:r, c:c))
                            tblSheet.setItem(r.cint, c.cint, newQTableWidgetItem(Q cell.dispValue.toUserString))
            updateSheet()
        
        discard addTab(tabWidget, tabCircles, Q "Circles")
        discard addTab(tabWidget, tabCounter, Q "Counter")
        discard addTab(tabWidget, tabTempConverter, Q "Temp Converter")
        discard addTab(tabWidget, tabFlightBooker, Q "Flight booker")
        discard addTab(tabWidget, tabTimer, Q "Timer")
        discard addTab(tabWidget, tabCRUD, Q "CRUD")
        discard addTab(tabWidget, tabSheet, Q "Sheet")

nimqt.insertAllSlotImplementations

win.show()
discard app.exec()
