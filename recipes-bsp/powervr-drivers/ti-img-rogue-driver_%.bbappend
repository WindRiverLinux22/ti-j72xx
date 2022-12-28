FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"

BRANCH = "linuxws/dunfell/k5.10/${PV}_unified_fw_pagesize"

SRC_URI += " \
    file://0001-driver-pvr_buffer_sync-replace-dma_resv_get_list-wit.patch \
    file://0002-services-drop-included-file-stdarg.h.patch \
    file://0001-rgxinit.c-cast-boolean-value-to-IMG_BOOL.patch \
"
SRCREV = "6d3d62a15ceb85b719c35f34c6c9e35f556b406b"

TARGET_PRODUCT:ti-j72xx = "j721e_linux"
TARGET_BVNC:ti-j72xx = "22.104.208.318"
MACHINE_KERNEL_PR:append = "b"

EXTRA_OEMAKE += ' RGX_BVNC=${TARGET_BVNC} '
do_compile:prepend() {
	cp ${S}/build/linux/config/compilers/aarch64-linux-gnu.mk ${S}/build/linux/config/compilers/aarch64-wrs-linux.mk
}

