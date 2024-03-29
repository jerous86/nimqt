UNAME:=$(shell uname)
QT_INSTALL_LIBS=$(shell nim r scripts/nimqt_paths.nim qtinstalllibs)/
DISTR=most
VERSION=$(shell nim r scripts/nimqt_paths.nim QT_VERSION)
VERSION_DISTR=${VERSION}_${DISTR}
MY_PATH=qt/6_${DISTR}/

all: calc
all2: seven_tasks hello poc text_view calc menu_toolbar load_ui custom_signal autosaver

distr: FORCE
	nim r scripts/distr.nim tmp/xml/${VERSION}/ qt/${VERSION_DISTR}/ ${DISTR}

calc: FORCE
	rm -f examples/calc
	make build_calc run_calc
build_calc:
	nim cpp --path:$(MY_PATH) examples/calc.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/calc; fi
run_calc:
	./examples/calc
	

text_view: FORCE
	rm -f examples/text_view
	make build_text_view run_text_view_nim
build_text_view:
	nim cpp --path:$(MY_PATH) examples/text_view.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/text_view; fi
run_text_view_nim:
	./examples/text_view


hello: FORCE
	rm -f examples/hello
	make build_hello run_hello
build_hello:
	nim cpp --path:$(MY_PATH) examples/hello.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/hello; fi
run_hello:
	./examples/hello
	

poc: FORCE
	rm -f poc
	make build_poc run_poc
build_poc:
	nim cpp --path:$(MY_PATH) examples/poc.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/poc; fi
run_poc:
	./examples/poc


load_ui: FORCE
	rm -f load_ui
	make build_load_ui run_load_ui
build_load_ui:
	nim cpp --path:$(MY_PATH) examples/load_ui.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/load_ui; fi
run_load_ui:
	./examples/load_ui


custom_signal: FORCE
	rm -f custom_signal
	make build_custom_signal run_custom_signal
build_custom_signal:
	nim cpp --path:$(MY_PATH) examples/custom_signal.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/custom_signal; fi
run_custom_signal:
	./examples/custom_signal


autosaver: FORCE
	rm -f autosaver
	make build_autosaver run_autosaver
build_autosaver:
	nim cpp --path:$(MY_PATH) examples/autosaver.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/autosaver; fi
run_autosaver:
	./examples/autosaver


custom_widget_main: FORCE
	rm -f custom_widget_main
	make build_custom_widget_main run_custom_widget_main
build_custom_widget_main:
	nim cpp --path:$(MY_PATH) examples/custom_widget_main.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/custom_widget_main; fi
run_custom_widget_main:
	./examples/custom_widget_main


seven_tasks: FORCE
	rm -f seven_tasks
	make build_seven_tasks run_seven_tasks
build_seven_tasks:
	nim cpp --path:$(MY_PATH) examples/seven_tasks.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/seven_tasks; fi
run_seven_tasks:
	./examples/seven_tasks


menu_toolbar: FORCE
	rm -f menu_toolbar
	make build_menu_toolbar run_menu_toolbar
build_menu_toolbar:
	nim cpp --path:$(MY_PATH) examples/menu_toolbar.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_INSTALL_LIBS) examples/menu_toolbar; fi
run_menu_toolbar:
	./examples/menu_toolbar



clean:
	rm -f ./examples/{poc,load_ui,hello,text_view,calc,custom_signal,autosaver,custom_widget,seven_tasks,menu_toolbar}
	
copy_scripts:
	/bin/cp -f scripts/nimqt.nim qt/6/nimqt.nim
	/bin/cp -f scripts/skips.nim qt/6/nimqt/
	/bin/cp -f scripts/typeDb.nim qt/6/nimqt/
	/bin/cp -f scripts/nimqt_paths.nim qt/6/nimqt/
	/bin/cp -f scripts/tools/*.nim qt/6/nimqt/tools/
	/bin/cp -f custom_widgets/*.nim qt/6/nimqt/custom_widgets/

docs:
	nim doc --project --index:on --outdir:htmldocs --path:qt/6/ qt/6/nimqt.nim

FORCE:
