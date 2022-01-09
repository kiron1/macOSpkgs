#
# lang / python
#
#
VERSION:=7.2.1
SRC_URI:=https://github.com/PowerShell/PowerShell/releases/download/v${VERSION}/powershell-lts-${VERSION}-osx-x64.pkg
SHASUM:=2fd219a31da51e1178bcb9e460b9cf05fde3d9fd91e4c3cc0d63ae4ad4ed09f5
PKGID:=com.microsoft.powershell-lts

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
