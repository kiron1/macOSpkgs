#
# graphics / ffmpeg
#

VERSION:=4.2.2
SRC_URI:=https://evermeet.cx/pub/ffmpeg/ffmpeg-${VERSION}.zip
SHASUM:=0c28c883b953c8a3ef387ea1a7dc39fa7be991f4
PKGID:=org.ffmpeg.FFmpeg

TOP:=$(realpath ${CURDIR}/../..)

include ${TOP}/infrastructure/mk/vars.mk

${PKG_FILE}: ${ROOT}/bin/ffmpeg
	@echo PKGBUILD $@
	@pkgbuild --root ${ROOT} --install-location ${PREFIX} --identifier ${PKGID} --version ${VERSION} --ownership recommended "$@"

${ROOT}/bin/ffmpeg: ffmpeg-${VERSION}.zip
	@echo UNZIP $^
	@mkdir -p "$(dir $@)"
	@unzip -o "$^" -d "$(dir $@)"
	@touch "$@"

$(eval $(call http_file, ffmpeg-${VERSION}.zip, ${SRC_URI}, ${SHASUM}))

include ${TOP}/infrastructure/mk/macos.port.mk
