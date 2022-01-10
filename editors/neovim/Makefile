#
# textproc / pandoc
#

VERSION:=0.6.1
SRC_URI:=https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-macos.tar.gz
SHASUM:=3546be6a13f45411731dc4c93b0932f7d6197b4318ea082cafe7b28d843248f9
PKGID:=com.github.neovim.NeoVIm

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_FILE}: ${ROOT}/bin/nvim
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/nvim: nvim-${VERSION}-macos.tar.gz
	@echo UNZIP $^
	@mkdir -p "${ROOT}"
	@tar xzf "$^" -C "${ROOT}" --strip-components 1
	@touch "$@"

$(eval $(call http_file, nvim-${VERSION}-macos.tar.gz, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
