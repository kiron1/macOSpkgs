#
# lang / python
#
#
VERSION:=1.16
SRC_URI:=https://golang.org/dl/go${VERSION}.darwin-amd64.pkg
SHASUM:=2906bd8e6bf60d0e15d2e771318ed382f67da88509bb86f9b21018022ab788b1
PKGID:=org.golang.go.pkg

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
