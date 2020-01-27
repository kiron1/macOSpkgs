#
# installer - https://apple.stackexchange.com/a/72227
# pkgutils - https://superuser.com/a/525395
#

VERSION:=2.9.1.1
SHASUM:=e3ab1b31e9c79e9f6ea7edb0b901d707ff9ce030
PKG_NAME:=net.johnmacfarlane.pandoc


pandoc-${VERSION}-macOS.pkg:
	@echo FETCH $@
	@curl -OL# https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-macOS.pkg
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: pandoc-${VERSION}-macOS.pkg
	@echo INSTALL
	installer -package $^ -target /

uninstall:
	@echo UNINSTALL
	pkgutil --files "${PKG_NAME}"
	pkgutil --only-files --files "${PKG_NAME}" | xargs -I % rm -f -- /%
	pkgutil --forget "${PKG_NAME}"
