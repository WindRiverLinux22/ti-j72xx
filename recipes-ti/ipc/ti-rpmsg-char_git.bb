SUMMARY = "TI RPMsg Char Utility Library"

require ti-rpmsg-char.inc

inherit autotools pkgconfig

PR = "r0"

COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"
