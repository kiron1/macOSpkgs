
VERSION:=2.9.1.1
SHASUM:=e3ab1b31e9c79e9f6ea7edb0b901d707ff9ce030


pandoc-${VERSION}-macOS.pkg:
	@echo FETCH $@
	@curl -OL# https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-macOS.pkg
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: pandoc-${VERSION}-macOS.pkg
	@echo INSTALL
	installer -package $^ -target /
