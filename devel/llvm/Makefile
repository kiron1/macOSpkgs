#
# https://github.com/jgm/pandoc/blob/master/macos/make_macos_package.sh
# https://vincent.bernat.ch/en/blog/2013-autoconf-osx-packaging
# https://stackoverflow.com/a/11487658
#

VERSION:=9.0.1
SHASUM:=693e7c2d2fcd005f0d8198ea0174ae30ec78bb7c
PKG_NAME:=org.llvm.ClangLLVM

ROOT:=_work
DEST:=${ROOT}/usr/local

clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz:
	@echo FETCH $@
	@curl -OL# https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

${DEST}/bin/llvm-config: clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz
	@mkdir -p "${DEST}"
	@echo UNTAR $^
	@tar -xzvf "$^" -C "${DEST}" --strip-components 1
	@touch "$@"

clang+llvm-${VERSION}-x86_64-apple-darwin.pkg: ${DEST}/bin/llvm-config
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --identifier ${PKG_NAME} --version ${VERSION} --ownership recommended "$@"

install: clang+llvm-${VERSION}-x86_64-apple-darwin.pkg
	@echo INSTALL $^
	@installer -package "$^" -target /

list: clang+llvm-${VERSION}-x86_64-apple-darwin.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

uninstall:
	@echo UNINSTALL
	@{TOP}/../../infrastructure/bin/pkgrm ${PKG_NAME}
