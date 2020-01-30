#
# https://github.com/jgm/pandoc/blob/master/macos/make_macos_package.sh
# https://vincent.bernat.ch/en/blog/2013-autoconf-osx-packaging
# https://stackoverflow.com/a/11487658
#

ifeq ($(strip ${TOP}),)
	$(error "TOP variable is empty or not defined.")
endif

ifeq ($(strip ${VERSION}),)
	$(error "VERSION variable is empty or not defined.")
endif

ifeq ($(strip ${PORT_NAME}),)
	$(error "PORT_NAME variable is empty or not defined.")
endif


install: ${PORT_NAME}-${VERSION}-x86_64-apple-darwin.pkg
	@echo INSTALL $^
	@installer -package "$^" -target /

bom: ${PORT_NAME}-${VERSION}-x86_64-apple-darwin.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

ifneq ($(strip ${PKGID}),)
uninstall:
	@echo UNINSTALL
	@{TOP}/infrastructure/bin/pkgrm ${PKGID}
endif
