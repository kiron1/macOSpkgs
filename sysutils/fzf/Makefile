#
# sysutils / fzf
#

VERSION:=0.20.0
SRC_URI:=https://github.com/junegunn/fzf-bin/releases/download/${VERSION}/fzf-${VERSION}-darwin_amd64.tgz
SHASUM:=82d4781ff56c47dbc3441878332eb256fabdfd3d
PKGID:=com.github.junegunn.fzf.Fzf

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_FILE}: ${ROOT}/bin/fzf
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PORT_NAME} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/fzf: fzf-${VERSION}-darwin_amd64.tgz
	@echo UNTAR $^
	@mkdir -p "${ROOT}/bin"
	@tar -xzvf "$^" -C "${ROOT}/bin"
	@touch "$@"

$(eval $(call http_file, fzf-${VERSION}-darwin_amd64.tgz, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
