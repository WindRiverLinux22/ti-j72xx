FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"

BRANCH = "1.13-5776728/linux-k5.10"

SRC_URI = " \
    git://git.ti.com/graphics/ti-img-rogue-driver.git;branch=${BRANCH} \
    file://0001-driver-pvr_buffer_sync-replace-dma_resv_get_list-wit.patch \
    file://0002-driver-pvr_drm-don-t-set-dev_priv_size-0.patch \
    file://0003-service-physmem_dmabuf-replace-dma_buf_vmap-x-with-d.patch \
"
SRCREV = "35a25875ae8738f82c7cabc6b077ef992b0cca84"

TARGET_PRODUCT = "j721e_linux"
TARGET_BVNC = "22.104.208.318"
MACHINE_KERNEL_PR:append = "b"

do_compile:prepend() {
	cp ${S}/build/linux/config/compilers/aarch64-linux-gnu.mk ${S}/build/linux/config/compilers/aarch64-wrs-linux.mk
}

