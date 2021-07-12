#
# textproc / pandoc
#

VERSION:=0.5.0
SRC_URI:=https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-macos.tar.gz
SHASUM:=6bcfa5192c9460c946e853dbd1a0baf659df5de184436144147711d1bceedeee
PKGID:=com.github.neovim.NeoVIm

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_FILE}: ${ROOT}/bin/nvim
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/nvim: nvim-macos.tar.gz
	@echo UNZIP $^
	@mkdir -p "${ROOT}"
	@tar xzf "$^" -C "${ROOT}" --strip-components 1
	@touch "$@"

$(eval $(call http_file, nvim-macos.tar.gz, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
