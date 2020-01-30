#
# textproc / pandoc
#

VERSION:=2.9.1.1
SRC_URI:=https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-macOS.pkg
SHASUM:=e3ab1b31e9c79e9f6ea7edb0b901d707ff9ce030
PKG_NAME:=net.johnmacfarlane.pandoc

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
