#
#
#

VERSION:=1.9.2
SRC_URI:=https://getcomposer.org/download/${VERSION}/composer.phar
SHASUM:=b8e89b3e9a661792adc32e8bbe0b322248527d57
PKG_NAME:=org.getcomposer.Composer

ROOT:=_work
DEST:=${ROOT}/usr/local

composer-${VERSION}.pkg: ${DEST}/bin/composer
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --identifier ${PKG_NAME} --version ${VERSION} --ownership recommended "$@"

${DEST}/bin/composer: composer.phar
	@install -d "$(dir $@)"
	@install -c "$^" "$@"

composer.phar:
	@echo FETCH $@
	@curl -OL# ${SRC_URI}
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: composer-${VERSION}.pkg
	@echo INSTALL $^
	@installer -package "$^" -target /

list: composer-${VERSION}.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

uninstall:
	@echo UNINSTALL
	pkgutil --files "${PKG_NAME}"
	pkgutil --only-files --files "${PKG_NAME}" | xargs -I % rm -f -- /%
	pkgutil --forget "${PKG_NAME}"
