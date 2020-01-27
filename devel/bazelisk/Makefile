#
#
#

VERSION:=1.2.1
SRC_URI:=https://github.com/bazelbuild/bazelisk/releases/download/v${VERSION}/bazelisk-darwin-amd64
SHASUM:=9d42bc6458b4a2749473b313cbf08b2778eb0331

PREFIX?=/usr/local


bazelisk-darwin-amd64:
	@echo FETCH $@
	@curl -OL# "${SRC_URI}"
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: bazelisk-darwin-amd64
	@echo INSTALL $^
	@install -d ${PREFIX}/bin
	@install $< "${PREFIX}/bin/bazel"

uninstall:
	@echo UNINSTALL
	@rm -f -- "${PREFIX}/bin/bazel"
