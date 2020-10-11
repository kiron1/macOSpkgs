#
# devel / llvm
#

VERSION:=10.0.0
SRC_URI:=https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz
SHASUM:=fcc30f272bdc34ae4222ebc7f27d8e5192834ae6
PKGID:=org.llvm.ClangLLVM
PORT_NAME:=clang+llvm

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_FILE}: ${ROOT}/bin/llvm-config
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/llvm-config: clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz
	@mkdir -p "${ROOT}"
	@echo UNTAR $^
	@tar -xzvf "$^" -C "${ROOT}" --strip-components 1
	@touch "$@"

$(eval $(call http_file, clang+llvm-${VERSION}-x86_64-apple-darwin.tar.xz, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
