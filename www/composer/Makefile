#
# www / composer
#

VERSION:=2.1.8
SRC_URI:=https://getcomposer.org/download/${VERSION}/composer.phar
SHASUM:=77b8aca1b41174a67f27be066558f8a96f489916f4cded2bead3cab6a3f33590
PKGID:=org.getcomposer.Composer

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_FILE}: ${ROOT}/bin/composer
	@echo PKGBUILD $@
	@chmod +x "${ROOT}/bin/composer"
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

$(eval $(call http_file, ${ROOT}/bin/composer, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
