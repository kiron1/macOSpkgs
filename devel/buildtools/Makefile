#
# devel / bazelisk
#

VERSION:=4.0.0
PKGID:=com.github.bazelbuild.buildtools.BuildTools

TOP=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

buildtools-${VERSION}-x86_64-apple-darwin.pkg: ${ROOT}/bin/buildifier ${ROOT}/bin/buildozer #${ROOT}/bin/unused_deps
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/buildifier: buildifier-darwin-amd64
	@${INSTALL} -d $(dir $@)
	@${INSTALL_PROGRAM} $< "$@"

${ROOT}/bin/buildozer: buildozer-darwin-amd64
	@${INSTALL} -d $(dir $@)
	@${INSTALL_PROGRAM} $< "$@"

${ROOT}/bin/unused_deps: unused_deps-darwin-amd64
	@${INSTALL} -d $(dir $@)
	@${INSTALL_PROGRAM} $< "$@"

$(eval $(call http_file, \
  buildifier-darwin-amd64, \
  https://github.com/bazelbuild/buildtools/releases/download/${VERSION}/buildifier-darwin-amd64, \
  cde11f65edca5601d3274f2443c543e7a72836e69abcb640916bb0fc55ae3237))

$(eval $(call http_file, \
  buildozer-darwin-amd64, \
  https://github.com/bazelbuild/buildtools/releases/download/${VERSION}/buildozer-darwin-amd64, \
  0048ace4a044ae620bb5f82850a1983af54391f02573fd3e6536b61dd557c97f))

$(eval $(call http_file, \
  unused_deps-darwin-amd64, \
  https://github.com/bazelbuild/buildtools/releases/download/${VERSION}/unused_deps-darwin-amd64, \
  ce2c9c446777b476090cdd5a75e9219a51de250569a220f6fe2da75bfbfe4ab9))

include ${TOP}/infrastructure/mk/macos.port.mk
