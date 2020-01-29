#
#
#

VERSION:=0.20.0
SRC_URI:=https://github.com/junegunn/fzf-bin/releases/download/${VERSION}/fzf-${VERSION}-darwin_amd64.tgz
SHASUM:=82d4781ff56c47dbc3441878332eb256fabdfd3d
PKG_NAME:=com.github.junegunn.fzf.Fzf

PREFIX?=/usr/local

ROOT:=_work


fzf-${VERSION}-x86_64-apple-darwin.pkg: ${ROOT}/bin/fzf
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKG_NAME} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/fzf: fzf-${VERSION}-darwin_amd64.tgz
	@mkdir -p "${ROOT}/bin"
	@echo UNTAR $^
	@tar -xzvf "$^" -C "${ROOT}/bin"
	@touch "$@"

fzf: fzf-${VERSION}-darwin_amd64.tgz
	@echo EXTRACT $^
	@tar xzvf "$^"
	@touch "$@"

fzf-${VERSION}-darwin_amd64.tgz:
	@echo FETCH $@
	@curl -OL# "${SRC_URI}"
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: fzf-${VERSION}-x86_64-apple-darwin.pkg
	@echo INSTALL $^
	@installer -package "$^" -target /

list: fzf-${VERSION}-x86_64-apple-darwin.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

uninstall:
	@echo UNINSTALL
	@rm -f -- "${PREFIX}/bin/bazel"
