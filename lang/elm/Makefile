#
# lang / python
#
#
VERSION:=0.19.1
SRC_URI:=https://github.com/elm/compiler/releases/download/${VERSION}/installer-for-mac.pkg
SHASUM:=762b36fa60245b55443c6ac9c255becf7080ad2d
PKGID:=org.elm-lang.binaries.pkg

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
