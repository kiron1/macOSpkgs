#
# lang / python
#
#
VERSION:=3.9.1
SRC_URI:=https://www.python.org/ftp/python/${VERSION}/python-${VERSION}-macos11.0.pkg
SHASUM:=265a7535bceb28bd68de017364edb4a6f6c0fbfb
PKGID:=org.python.Python.PythonUnixTools-3.9
PKGID+=org.python.Python.PythonApplications-3.9
PKGID+=org.python.Python.PythonDocumentation-3.9
PKGID+=org.python.Python.PythonFramework-3.9

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

$(eval $(call http_file, ${PKG_FILE}, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
