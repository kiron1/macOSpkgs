#
#
#

VERSION:=1.2.1
SRC_URI:=https://github.com/bazelbuild/bazelisk/releases/download/v${VERSION}/bazelisk-darwin-amd64
SHASUM:=9d42bc6458b4a2749473b313cbf08b2778eb0331
PKG_NAME:=com.github.bazelbuild.bazelisk.Bazelisk

PREFIX?=/usr/local

ROOT:=_work


bazelisk-${VERSION}-x86_64-apple-darwin.pkg: ${ROOT}/bin/bazel
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKG_NAME} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/bazel: bazelisk-darwin-amd64
	@mkdir -p $(dir $@)
	@cp "$^" "$@"

bazelisk-darwin-amd64:
	@echo FETCH $@
	@curl -OL# "${SRC_URI}"
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: bazelisk-${VERSION}-x86_64-apple-darwin.pkg
	@echo INSTALL $^
	@installer -package "$^" -target /

list: bazelisk-${VERSION}-x86_64-apple-darwin.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

uninstall:
	@echo UNINSTALL
	@{TOP}/../../infrastructure/bin/pkgrm ${PKG_NAME}
