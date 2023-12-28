#!/usr/bin/env bash
# 
# This script will create the necessary nim-files that can be imported.
# It will generate the xml files, then convert those xml files
# to nim files according to the distribution $1.
# 
set -ue

cd "$(dirname "$0")/.."

NIM_FLAGS="-mm:refc"
if [ $# -ne 1 ]; then
	echo "$0 distr"
	echo "where distr is one of"
	nim r $NIM_FLAGS scripts/distr.nim --print-distributions
	exit 1
fi

DISTR="$1"

set -uex

mkdir -p tmp/ qt/
./scripts/generate_makefile.sh $DISTR > tmp/Makefile_${DISTR}
make -f tmp/Makefile_${DISTR} cpp2xml generateTypeDb distr 
# make -f tmp/Makefile_${DISTR} testnim # just does a ```nim check``` on a file that imports the module

