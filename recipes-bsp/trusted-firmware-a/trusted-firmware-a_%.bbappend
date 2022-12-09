PV = "2.6"
LIC_FILES_CHKSUM:ti-j72xx = "file://license.rst;md5=1dd070c98a281d18d9eefd938729b031"
SRC_URI = "git://git.trustedfirmware.org/TF-A/trusted-firmware-a.git;protocol=https;name=tfa;branch=master"
SRCREV_tfa = "453abc80b2eacbf2816c838e47e40f063227d934"
TFA_BUILD_TARGET  = "all"
TFA_INSTALL_TARGET = "bl31"
TFA_SPD = "opteed"
TFA_PLATFORM = "k3"
TFA_BOARD = "generic"

FILES:${PN} += "/firmware/*"

COMPATIBLE_MACHINE = "ti-j72xx"
