#
# www / composer
#

VERSION:=1.9.2
SRC_URI:=https://getcomposer.org/download/${VERSION}/composer.phar
SHASUM:=b8e89b3e9a661792adc32e8bbe0b322248527d57
PKGID:=org.getcomposer.Composer

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_NAME}: ${ROOT}/bin/composer
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

$(eval $(call http_file, ${ROOT}/bin/composer.phar, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
