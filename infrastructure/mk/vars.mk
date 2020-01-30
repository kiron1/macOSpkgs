
ifeq ($(strip $(VERSION)),)
	$(error "VERSION variable is empty or not defined.")
endif

PORT_NAME?=$(notdir ${CURDIR})

PREFIX?=/usr/local

ROOT:=_work

# Function:
#   http_file - Generate a target to download a file.
# Arguments:
#   1 Name of file
#   2 http or https url
#   3 shasum
define http_file
$(strip ${1}):
	@echo FETCH ${1}
	@curl -SfL -y 30 -Y 30 --connect-timeout 30 --retry 3 --progress-bar -o ${1} ${2}
	@printf "%s  %s" ${3} ${1} | shasum -c -
endef
