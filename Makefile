UNAME:=$(shell uname)
QT_ROOT=$(shell nim r scripts/nimqt_paths.nim Qt_root)/..
DISTR=minimal
VERSION=$(shell nim r scripts/nimqt_paths.nim QT_VERSION)
VERSION_DISTR=${VERSION}_${DISTR}
MY_PATH=qt/6.4.1_minimal/

all: calc

distr: FORCE
	nim r scripts/distr.nim tmp/xml/${VERSION}/ qt/${VERSION_DISTR}/ ${DISTR}

calc: FORCE
	rm -f examples/calc
	make build_calc run_calc
build_calc:
	nim cpp --path:$(MY_PATH) examples/calc.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_ROOT)/lib/ examples/calc; fi
run_calc:
	./examples/calc
	

text_view: FORCE
	rm -f examples/text_view
	make build_text_view run_text_view_nim
build_text_view:
	nim cpp --path:$(MY_PATH) examples/text_view.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_ROOT)/lib/ examples/text_view; fi
run_text_view_nim:
	./examples/text_view
	
hello: FORCE
	rm -f examples/hello
	make build_hello run_hello
build_hello:
	nim cpp --path:$(MY_PATH) examples/hello.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_ROOT)/lib/ examples/hello; fi
run_hello:
	./examples/hello
	

poc: FORCE
	rm -f poc
	make build_poc run_poc
build_poc:
	nim cpp --path:$(MY_PATH) examples/poc.nim
	if [ $(UNAME) = Darwin ]; then install_name_tool -add_rpath $(QT_ROOT)/lib/ examples/poc; fi
run_poc:
	./examples/poc

FORCE:
