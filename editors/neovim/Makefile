#
# textproc / pandoc
#

VERSION:=0.4.4
SRC_URI:=https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-macos.tar.gz
SHASUM:=c10b2ee9c305787dc53854e6c26d8cdd21191ecf26f3a374ef92a8020a3737ba
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
