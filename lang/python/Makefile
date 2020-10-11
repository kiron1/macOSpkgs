#
# lang / python
#
#
VERSION:=3.8.6
SRC_URI:=https://www.python.org/ftp/python/${VERSION}/python-${VERSION}-macosx10.9.pkg
SHASUM:=ef781df41a0cad0f668165d5335848cbf029904e
PKGID:=org.python.Python.PythonUnixTools-3.8
PKGID+=org.python.Python.PythonApplications-3.8
PKGID+=org.python.Python.PythonDocumentation-3.8
PKGID+=org.python.Python.PythonFramework-3.8

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
