#
# textproc / pandoc
#

VERSION:=2.17.1.1
SRC_URI:=https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-macOS.pkg
SHASUM:=d544781a5718ccd03047ba2840a0f4ecefe0374dc5669d7f7cb1dba0c24489f6
PKG_NAME:=net.johnmacfarlane.pandoc

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
