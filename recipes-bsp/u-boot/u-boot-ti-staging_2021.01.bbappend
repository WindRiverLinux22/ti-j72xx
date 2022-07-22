UBOOT_MACHINE:ti-j72xx = "j721e_evm_a72_config"
COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"
SPL_BINARY:ti-j72xx = "tispl.bin"
PACKAGECONFIG:append:ti-j72xx = " atf optee dm"
FILESEXTRAPATHS:prepend:ti-j72xx := "${THISDIR}/files:"

SRCREV:ti-j72xx = "15769936a559b1840f50b83f94ee0c636b245001"

SRC_URI:append:ti-j72xx = " file://0001-drivers-ram-k3-ddrss-drop-the-whole-file-cps_bm.patch \
"
