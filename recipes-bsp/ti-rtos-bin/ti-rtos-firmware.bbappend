COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"

PV = "2021.09a"
INC_PR = "r1"
PLAT_SFX:ti-j72xx = "j721e"

# Firmware versions
CORESDK_RTOS_VERSION = "08.01.00.02"
TI_LINUX_FW_SRCREV = "c96a734a059889e571dcf30c0638157c690a6e6e"
SRCREV = "${TI_LINUX_FW_SRCREV}"
K3_IMAGE_GEN_SRCREV ?= "489c767a153ff26e9230746e04dd4b1ad0809901"

FILES:${PN} += "${nonarch_base_libdir}"

do_install:prepend:ti-j72xx() {
    install -d ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu1_1_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu2_0_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu2_1_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu3_0_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_mcu3_1_release_strip.xer5f ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_c66xdsp_1_release_strip.xe66 ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_c66xdsp_2_release_strip.xe66 ${LEGACY_IPC_FW_DIR}
    install -m 0644 ${RTOS_IPC_FW_DIR}/ipc_echo_test_c7x_1_release_strip.xe71 ${LEGACY_IPC_FW_DIR}
    # DM Firmware
    install -m 0644 ${RTOS_DM_FW_DIR}/ipc_echo_testb_mcu1_0_release_strip.xer5f ${LEGACY_DM_FW_DIR}
    # ETH firmware
    install -d ${LEGACY_ETH_FW_DIR}
    install -m 0644 ${RTOS_ETH_FW_DIR}/app_remoteswitchcfg_server_strip.xer5f ${LEGACY_ETH_FW_DIR}
}

ALTERNATIVE:${PN}:ti-j72xx = "\
                    j7-mcu-r5f0_0-fw \
                    j7-mcu-r5f0_1-fw \
                    j7-main-r5f0_0-fw \
                    j7-main-r5f0_1-fw \
                    j7-main-r5f1_0-fw \
                    j7-main-r5f1_1-fw \
                    j7-c66_0-fw \
                    j7-c66_1-fw \
                    j7-c71_0-fw \
                    "
TARGET_MCU_R5FSS0_0:ti-j72xx = "j7-mcu-r5f0_0-fw"
TARGET_MCU_R5FSS0_1:ti-j72xx = "j7-mcu-r5f0_1-fw"
TARGET_MAIN_R5FSS0_0:ti-j72xx = "j7-main-r5f0_0-fw"
TARGET_MAIN_R5FSS0_1:ti-j72xx = "j7-main-r5f0_1-fw"
TARGET_MAIN_R5FSS1_0:ti-j72xx = "j7-main-r5f1_0-fw"
TARGET_MAIN_R5FSS1_1:ti-j72xx = "j7-main-r5f1_1-fw"
TARGET_C66_0:ti-j72xx = "j7-c66_0-fw"
TARGET_C66_1:ti-j72xx = "j7-c66_1-fw"
TARGET_C7X_0:ti-j72xx = "j7-c71_0-fw"


