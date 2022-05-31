PV = "2.5"
LIC_FILES_CHKSUM:ti-j72xx = "file://license.rst;md5=1dd070c98a281d18d9eefd938729b031"
SRC_URI = "git://git.ti.com/atf/arm-trusted-firmware.git;branch=ti-atf;name=tfa"
SRCREV_tfa = "0693f356eb2a25adf8758d98058120bed082cc73"
TFA_BUILD_TARGET  = "all"
TFA_INSTALL_TARGET = "bl31"
TFA_SPD = "opteed"
TFA_PLATFORM = "k3"
TFA_BOARD = "generic"

FILES:${PN} += "/firmware/*"

COMPATIBLE_MACHINE = "ti-j72xx"
