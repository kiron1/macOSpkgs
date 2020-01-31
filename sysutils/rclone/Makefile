#
# sysutils / rclone
#

VERSION:=1.50.2
SRC_URI:=https://downloads.rclone.org/v${VERSION}/rclone-v${VERSION}-osx-amd64.zip
SHASUM:=6c2164a54878e4b2806a357a869f89425233af1f
PKGID:=org.rclone.Rclone

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_FILE}: ${ROOT}/bin/rclone ${ROOT}/share/man/man1/rclone.1
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/rclone: rclone-v${VERSION}-osx-amd64.zip
	@echo UNZIP $^
	@mkdir -p "$(dir $@)"
	@tar -xzvf "$^" -C "${ROOT}/bin" --strip 1 rclone-v${VERSION}-osx-amd64/rclone
	@touch "$@"

${ROOT}/share/man/man1/rclone.1: rclone-v${VERSION}-osx-amd64.zip
	@echo UNZIP $^
	@mkdir -p "$(dir $@)"
	@tar -xzvf "$^" -C "${ROOT}/bin" --strip 1 rclone-v${VERSION}-osx-amd64/rclone.1
	@touch "$@"

$(eval $(call http_file, rclone-v${VERSION}-osx-amd64.zip, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
