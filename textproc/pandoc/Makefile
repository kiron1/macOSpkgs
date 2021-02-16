#
# textproc / pandoc
#

VERSION:=2.11.4
SRC_URI:=https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-macOS.pkg
SHASUM:=1d339d946bef05e59eb6026198c8419c8e5748850af52a095ad227fd89f54384
PKG_NAME:=net.johnmacfarlane.pandoc

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
