#
#
#

VERSION:=4.2.2
SRC_URI:=https://evermeet.cx/pub/ffmpeg/ffmpeg-${VERSION}.zip
SHASUM:=0c28c883b953c8a3ef387ea1a7dc39fa7be991f4
PKG_NAME:=org.ffmpeg.FFmpeg

ROOT:=_work
DEST:=${ROOT}/usr/local

ffmpeg-${VERSION}.pkg: ${DEST}/bin/ffmpeg
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --identifier ${PKG_NAME} --version ${VERSION} --ownership recommended "$@"

${DEST}/bin/ffmpeg: ffmpeg
	@install -d "$(dir $@)"
	@install -c "$^" "$@"

ffmpeg: ffmpeg-${VERSION}.zip
	@echo UNZIP $^
	@unzip -o "$^"
	@touch "$@"

ffmpeg-${VERSION}.zip:
	@echo FETCH $@
	@curl -OL# ${SRC_URI}
	@printf "%s  %s" "${SHASUM}" $@ | shasum -c -

install: ffmpeg-${VERSION}.pkg
	@echo INSTALL $^
	@installer -package "$^" -target /

list: ffmpeg-${VERSION}.pkg
	@echo LIST BOM $^
	@lsbom $$(pkgutil --bom $^)

uninstall:
	@echo UNINSTALL
	pkgutil --files "${PKG_NAME}"
	pkgutil --only-files --files "${PKG_NAME}" | xargs -I % rm -f -- /%
	pkgutil --forget "${PKG_NAME}"
