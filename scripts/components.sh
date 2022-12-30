#!/usr/bin/env bash
# shellcheck disable=SC2034,SC2016
#
# This script defines some constants. It is to be included in other scripts.

# COMPONENTS=(QtCore QtGui QtWidgets QtQmlCore QtQml)
COMPONENTS=(QtCore QtGui QtWidgets)

# The version for which we are generating nim files
QT_VERSION=$(nim r scripts/paths.nim '${QT_VERSION}')
readarray -t ALL_DISTRIBUTIONS < <(nim r scripts/distr.nim --print-distributions)

# Check distr.nim for possible names
DISTR="${DISTR:-minimal}"
VERSION_DISTR="${QT_VERSION}_${DISTR}"

# The exact location where to find the header files
QT_HEADERS_DIR() {
	local component="$1"
	nim r scripts/paths.nim "${component}_header_dir"
}

# Location where the xml files are stored.
XML_FILES_ROOT="$PWD/tmp/xml/${QT_VERSION}"

# Location where the nim files are written to.
NIMQT_ROOT="$PWD/qt/${QT_VERSION}_${DISTR}"

# Determines if a file is skipped.
skippable_file() {
	case "$1" in
		qtcore/Core_fake_header.h) echo 1;;
		qtcore/qfuture_impl.h) echo 1;;
		qtcore/qjni*.h) echo 1;;
		qtcore/qobjectdefs_impl.h) echo 1;;
		qtcore/qt_windows.h) echo 1;;
		qtgui/qwindowdefs_win.h) echo 1;;
		qtgui/qopengl*.h) echo 1;; # Generates very large headers, not using it for the moment ...
		*-*) echo 1;; # Invalid module names in nim
		*) echo 0
	esac
}
