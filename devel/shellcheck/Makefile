#
# devel / shellcheck
#

VERSION:=0.7.1
SRC_URI:=https://github.com/koalaman/shellcheck/releases/download/v${VERSION}/shellcheck-v${VERSION}.darwin.x86_64.tar.xz
SHASUM:=b080c3b659f7286e27004aa33759664d91e15ef2498ac709a452445d47e3ac23
PKGID:=com.github.koalaman.shellcheck.ShellCheck

TOP=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

shellcheck-${VERSION}-x86_64-apple-darwin.pkg: ${ROOT}/bin/shellcheck
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/shellcheck: shellcheck-v${VERSION}.darwin.x86_64.tar.xz
	@mkdir -p "${ROOT}/bin"
	@echo UNTAR $^
	@tar -xzf "$^" -C "${ROOT}/bin" --strip-components 1 '*/shellcheck'
	@touch "$@"

$(eval $(call http_file, shellcheck-v${VERSION}.darwin.x86_64.tar.xz, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
