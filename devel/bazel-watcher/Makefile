#
# devel / bazelisk
#

VERSION:=0.15.0
SRC_URI:=https://github.com/bazelbuild/bazel-watcher/releases/download/v${VERSION}/ibazel_darwin_amd64
SHASUM:=e0d2ab8b8ff4c75c171a0cf11207d601a81a0351fcc4b64191763d99dad7901d
PKGID:=com.github.bazelbuild.bazel-watcher.BazelWatcher

TOP=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

ibazel-${VERSION}-x86_64-apple-darwin.pkg: ${ROOT}/bin/ibazel
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/ibazel: ibazel_darwin_amd64
	@${INSTALL} -d $(dir $@)
	@${INSTALL_PROGRAM} $< "$@"

$(eval $(call http_file, ibazel_darwin_amd64, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
