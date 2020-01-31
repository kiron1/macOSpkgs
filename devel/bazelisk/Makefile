#
# devel / bazelisk
#

VERSION:=1.2.1
SRC_URI:=https://github.com/bazelbuild/bazelisk/releases/download/v${VERSION}/bazelisk-darwin-amd64
SHASUM:=9d42bc6458b4a2749473b313cbf08b2778eb0331
PKGID:=com.github.bazelbuild.bazelisk.Bazelisk

TOP=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

bazelisk-${VERSION}-x86_64-apple-darwin.pkg: ${ROOT}/bin/bazel
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/bazel: bazelisk-darwin-amd64
	@${INSTALL} -d $(dir $@)
	@${INSTALL_PROGRAM} $< "$@"

$(eval $(call http_file, bazelisk-darwin-amd64, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
