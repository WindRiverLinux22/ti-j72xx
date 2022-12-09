UBOOT_MACHINE:ti-j72xx = "j721e_evm_a72_config"
COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"
SPL_BINARY:ti-j72xx = "tispl.bin"
PACKAGECONFIG:append:ti-j72xx = " atf optee dm"
FILESEXTRAPATHS:prepend:ti-j72xx := "${THISDIR}/files:"

SRCREV:ti-j72xx = "a169f4261024397dd3ddb944decc1601a623df2a"

SRC_URI:append:ti-j72xx = " file://0001-drivers-ram-k3-ddrss-drop-the-whole-file-cps_bm.patch \
"
