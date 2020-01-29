VERSION:=3.8.1
SRC_URI:=https://www.python.org/ftp/python/${VERSION}/python-${VERSION}-macosx10.9.pkg
SHASUM:=d1c3f984b36d6043798becdbf68ec03dc89c4acd
PKG_NAMES:=org.python.Python.PythonUnixTools-3.8
PKG_NAMES+=org.python.Python.PythonApplications-3.8
PKG_NAMES+=org.python.Python.PythonDocumentation-3.8
PKG_NAMES+=org.python.Python.PythonFramework-3.8

TOP:=${CURDIR}/../..

python-${VERSION}-macosx10.9.pkg:
	@echo FETCH $@
	@curl -OL# "${SRC_URI}"
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: python-${VERSION}-macosx10.9.pkg
	@echo INSTALL
	installer -package $^ -target /

list: python-${VERSION}-macosx10.9.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

uninstall:
	@echo UNINSTALL
	@{TOP}/../../infrastructure/bin/pkgrm ${PKG_NAMES}
