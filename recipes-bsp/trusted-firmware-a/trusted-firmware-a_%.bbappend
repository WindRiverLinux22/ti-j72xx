PV:ti-j72xx = "2.6"
LIC_FILES_CHKSUM:ti-j72xx = "file://license.rst;md5=1dd070c98a281d18d9eefd938729b031"
SRC_URI:ti-j72xx = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=https;name=tfa;branch=master"
SRCREV_tfa:ti-j72xx = "453abc80b2eacbf2816c838e47e40f063227d934"
TFA_BUILD_TARGET:ti-j72xx  = "all"
TFA_INSTALL_TARGET:ti-j72xx = "bl31"
TFA_SPD:ti-j72xx = "opteed"
TFA_PLATFORM:ti-j72xx = "k3"
TFA_BOARD:ti-j72xx = "generic"

FILES:${PN}:ti-j72xx += "/firmware/*"

COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"
