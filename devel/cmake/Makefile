#
# devel / llvm
#

VERSION:=3.19.2
ARCHIVE:=cmake-${VERSION}-macos-universal.tar.gz
SRC_URI:=https://github.com/Kitware/CMake/releases/download/v${VERSION}/${ARCHIVE}
SHASUM:=753c72931e9c76c969255c197781635e7110e363
PREFIX:=Applications

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

install:
	cp -a "${ROOT}/CMake.app" "${DESTDIR}/${PREFIX}/"

uninstall:
	rm -rf -- "${DESTDIR}/${PREFIX}/CMake.app"

${ROOT}/CMake.app/Contents/bin/cmake: ${ARCHIVE}
	@mkdir -p "${ROOT}"
	@echo UNTAR $^
	@tar -xzf "$^" -C "${ROOT}" --strip-components 1
	@touch "$@"

$(eval $(call http_file, ${ARCHIVE}, ${SRC_URI}, ${SHASUM}))

#include ${TOP}/infrastructure/mk/macos.port.mk
