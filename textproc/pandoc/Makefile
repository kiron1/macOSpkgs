#
# textproc / pandoc
#

VERSION:=2.11.2
SRC_URI:=https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-macOS.pkg
SHASUM:=5ef3284f6e23b0081d6cf2a76818ee5157582916
PKG_NAME:=net.johnmacfarlane.pandoc

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
