#
# lang / python
#
#
VERSION:=3.8.1
SRC_URI:=https://www.python.org/ftp/python/${VERSION}/python-${VERSION}-macosx10.9.pkg
SHASUM:=d1c3f984b36d6043798becdbf68ec03dc89c4acd
PKGID:=org.python.Python.PythonUnixTools-3.8
PKGID+=org.python.Python.PythonApplications-3.8
PKGID+=org.python.Python.PythonDocumentation-3.8
PKGID+=org.python.Python.PythonFramework-3.8

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
