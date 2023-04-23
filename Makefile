UNAME:=$(shell uname)
QT_INSTALL_LIBS=$(shell nim r scripts/nimqt_paths.nim qtinstalllibs)/
DISTR=most
VERSION=$(shell nim r scripts/nimqt_paths.nim QT_VERSION)
VERSION_DISTR=${VERSION}_${DISTR}
MY_PATH=qt/6_${DISTR}/

all: calc
all2: hello poc text_view calc load_ui custom_signal autosaver

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


clean:
	rm -f ./examples/{poc,load_ui,hello,text_view,calc,custom_signal,autosaver}

FORCE:
