#!/usr/bin/env bash
#
# Generates a Makefile for converting from .h to .xml to .nim
#

cd "$(dirname "$0")/.."

DISTR="$1"

. scripts/components.sh

set -ue

echo "NIM_FLAGS:=--mm:refc"
echo "ROOT:=$PWD"
echo "XML_FILES_ROOT:=$XML_FILES_ROOT"
echo "NIMQT_ROOT:=$NIMQT_ROOT"
echo "DISTR:=$DISTR"
echo "VERSION_DISTR:=$VERSION_DISTR"
echo "QTCORE_HEADERS_DIR:=$(QT_HEADERS_DIR --enable-path-check QtCore)"
echo "QTGUI_HEADERS_DIR:=$(QT_HEADERS_DIR --enable-path-check QtGui)"
echo "QTWIDGETS_HEADERS_DIR:=$(QT_HEADERS_DIR --enable-path-check QtWidgets)"
echo "QTQMLCORE_HEADERS_DIR:=$(QT_HEADERS_DIR --disable-path-check QtQmlCore)"
echo "QTQML_HEADERS_DIR:=$(QT_HEADERS_DIR --disable-path-check QtQml)"
echo "QTUITOOLS_HEADERS_DIR:=$(QT_HEADERS_DIR --disable-path-check QtUiTools)"
echo ""
echo "all: distr"
echo "full: cpp2xml generateTypeDb distr"
echo "clean_full:"
echo "	rm -r '$NIMQT_ROOT' '$XML_FILES_ROOT'"
echo "	rm -f scripts/generateTypeDb scripts/distr scripts/cpp2xml scripts/xml2nim"
echo ""

echo "build_cpp2xml:"
echo "	nim \${NIM_FLAGS} -d:release c scripts/cpp2xml"

echo ""
# for DISTR in ${ALL_DISTRIBUTIONS[*]}; do
# 	echo "distr_${DISTR}:"
# 	echo "	nim \${NIM_FLAGS} -d:release r ./scripts/distr \${XML_FILES_ROOT} \${NIMQT_ROOT} ${DISTR}"
# done
echo "distr:"
echo "	nim \${NIM_FLAGS} -d:release r ./scripts/distr \${XML_FILES_ROOT} \${NIMQT_ROOT} ${DISTR}"
echo ""

echo "generateTypeDb: "
echo "	mkdir -p \${NIMQT_ROOT}"
echo "	nim \${NIM_FLAGS} -d:release r ./scripts/generateTypeDb \${XML_FILES_ROOT} \${NIMQT_ROOT} ${COMPONENTS[@]}"
echo "	cp \${NIMQT_ROOT}/typeDb.txt \${XML_FILES_ROOT}/"

echo "typeDb: generateTypeDb"

generate_for_component() {
	local component="$1"
	local component_lc=$(echo $component | tr '[:upper:]' '[:lower:]')

	local tmp_root="\${XML_FILES_ROOT}/$component_lc"

	echo "#"
	echo "# Start of targets for ${component}"
	echo "#"
	cpp2xml_modules=()
	xml2nim_modules=()
	testnim_modules=()
	clean_xml_modules=()
	clean_nim_modules=()
	clean_modules=()

	if compgen -G "$(QT_HEADERS_DIR --disable-path-check $component)/*.h" > /dev/null; then
		for headerFile in "$(QT_HEADERS_DIR --disable-path-check $component)"/*.h; do
			module="$(basename $headerFile .h)"
			id="${component_lc}_${module}"

			# headerFile2 is (should be) identical to headerFile, but it just makes use of 
			# the variable QT*_HEADERS_DIR (for clarity and brevity)
			headerFile2="\${${component^^}_HEADERS_DIR}/${module}.h"
			tgt_xml="$tmp_root/$module.xml"
			test_mod="$tmp_root/${module}_test.nim"
			tgt_nim="\${NIMQT_ROOT}/${component_lc}/${module}.nim"
			tgt2_nim="\${NIMQT_ROOT}/${module}.nim" # Without the component
			
			if [[ "$(skippable_file "$component_lc/$(basename $headerFile2)")" == 1 ]]; then continue; fi
			
			cpp2xml_modules+=("cpp2xml_${id}")
			xml2nim_modules+=("xml2nim_${id}")
			testnim_modules+=("testnim_${id}")
			clean_modules+=("clean_${id}")
			clean_xml_modules+=("clean_xml_${id}")
			clean_nim_modules+=("clean_nim_${id}")
			echo ""
			echo ""
			echo ""
			echo "#"
			echo "# Start of ${id}"
			echo "#"

			# NOTE: we cannot run testnim_${id} after generating ${id}.nim, because some dependencies might not
			# have been created yet.

			echo "${module}: ${id}"

			echo "${id}: clean_nim_${id} ${tgt_nim} testnim_${id}"

			echo "cpp2xml_${id}: ${headerFile2} $tgt_xml"

			echo "$tgt_xml:"
			echo "	./scripts/cpp2xml $component $module "$headerFile2" > "$tgt_xml"" 
			echo ""

			# echo "xml2nim_${id}: ${headerFile2} ${tgt_xml} ${tgt_nim}"

			# echo "$tgt_nim:"
			# echo "	./scripts/xml2nim "$headerFile2" "$tgt_xml" \${NIMQT_ROOT} > $tgt_nim || (rm -f $tgt_nim; exit 1)"
			# echo "	cd '$NIMQT_ROOT' && rm -f '${module}.nim' && ln -s '${component_lc}/${module}.nim' '${module}.nim'"

			echo "testnim_${id}:"
			echo "	@printf '{.warning[UnusedImport]:off.}\\nimport nimqt/${component_lc}/${module}\\n' > '$test_mod'"
			echo "	@if [ -f \${NIMQT_ROOT}/nimqt/${component_lc}/${module}.nim ]; then echo 'Testing ${component_lc}/${module}'; nim --path:qt/${VERSION_DISTR}/ --path:qt/${VERSION_DISTR}/qt/ check $test_mod; fi"

			echo "clean_nim_${id}:"
			echo "	rm -f '$tgt_nim' '$tgt2_nim' '$test_mod'"

			echo "clean_xml_${id}:"
			echo "	rm -f '$tgt_xml'"

			echo "clean_${id}: clean_xml_${id} clean_nim_${id}"
		done
	fi

	echo "#"
	echo "# cpp2xml, xml2nim and testnim for all modules in ${component_lc}"
	echo "#"

	echo ""
	echo "cpp2xml_init_${component_lc}:"
	echo "	mkdir -p \${XML_FILES_ROOT}/${component_lc}"
	echo ""
	# echo "xml2nim_init_${component_lc}:"
	# echo "	mkdir -p \${NIMQT_ROOT}/${component_lc}"
	# echo "	cd \${NIMQT_ROOT}/ && rm -f qt.nim && ln -s ../../../qt.nim"
	echo ""
	echo "cpp2xml_${component_lc}: cpp2xml_init_${component_lc} ${cpp2xml_modules[*]}"
	# echo "xml2nim_${component_lc}: xml2nim_init_${component_lc} ${xml2nim_modules[*]}"
	echo "testnim_${component_lc}: cpp2xml_init_${component_lc} ${testnim_modules[*]}"
	echo "clean_${component_lc}: ${clean_modules[*]}"
	echo "clean_xml_${component_lc}: ${clean_xml_modules[*]}"
	echo "clean_nim_${component_lc}: ${clean_nim_modules[*]}"
	echo ""
	echo ""
	echo "#"
	echo "# End of targets for ${component}"
	echo "#"
	echo ""
}

cpp2xml_mods=()
xml2nim_mods=()
testnim_mods=()
clean_xml_mods=()
clean_nim_mods=()
for component in ${COMPONENTS[@]}; do
	component_lc=$(echo $component | tr '[:upper:]' '[:lower:]')
	cpp2xml_mods+=("cpp2xml_${component_lc}")
	xml2nim_mods+=("xml2nim_${component_lc}")
	testnim_mods+=("testnim_${component_lc}")
	clean_xml_mods+=("clean_xml_${component_lc}")
	clean_nim_mods+=("clean_nim_${component_lc}")
done

echo ""
echo "cpp2xml: build_cpp2xml ${cpp2xml_mods[*]}"
# echo "xml2nim: ${xml2nim_mods[*]}"
echo "testnim: ${testnim_mods[*]}"
echo "clean_xml: ${clean_xml_mods[*]}"
echo "clean_nim: ${clean_nim_mods[*]}"

for component in ${COMPONENTS[@]}; do
	generate_for_component "$component"
done
