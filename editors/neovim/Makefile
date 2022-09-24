#
# textproc / pandoc
#

VERSION:=0.7.2
SRC_URI:=https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-macos.tar.gz
SHASUM:=39cb6b62f965dccebe433083e33974e1af3c4579a14bf818066b3d5250968495
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
