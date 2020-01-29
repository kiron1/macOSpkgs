#
# https://github.com/jgm/pandoc/blob/master/macos/make_macos_package.sh
# https://vincent.bernat.ch/en/blog/2013-autoconf-osx-packaging
# https://stackoverflow.com/a/11487658
#

VERSION:=9.0.1
SHASUM:=693e7c2d2fcd005f0d8198ea0174ae30ec78bb7c
PKG_NAME:=org.llvm.ClangLLVM

PREFIX?=/usr/local

ROOT:=_work


clang+llvm-${VERSION}-x86_64-apple-darwin.pkg: ${ROOT}/bin/llvm-config
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKG_NAME} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/llvm-config: clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz
	@mkdir -p "${ROOT}"
	@echo UNTAR $^
	@tar -xzvf "$^" -C "${ROOT}" --strip-components 1
	@touch "$@"

clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz:
	@echo FETCH $@
	@curl -OL# https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: clang+llvm-${VERSION}-x86_64-apple-darwin.pkg
	@echo INSTALL $^
	@installer -package "$^" -target /

list: clang+llvm-${VERSION}-x86_64-apple-darwin.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

uninstall:
	@echo UNINSTALL
	@{TOP}/../../infrastructure/bin/pkgrm ${PKG_NAME}
