FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

OPTEEMACHINE:ti-j72xx = "k3-j721e"
OPTEEOUTPUTMACHINE:ti-j72xx = "k3"

SRCREV:ti-j72xx = "15a746d28d10df3d79d72bc9fe4a5a654b88bcca"

FILES:${PN} += "/lib/firmware/*"

COMPATIBLE_MACHINE = "(^$)"
COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"

DEPENDS:append:ti-j72xx = " python3-cryptography-native"

do_compile:prepend:ti-j72xx() {
    export TI_SECURE_DEV_PKG=${TI_SECURE_DEV_PKG}
}

do_compile:append:ti-j72xx () {
    ( cd ${B}/core/; \
        cp tee-pager_v2.bin ${B}/bl32.bin; \
        cp tee.elf ${B}/bl32.elf; \
    )
}

do_install:append:ti-j72xx() {
    install -m 644 ${B}/*.optee ${D}${nonarch_base_libdir}/firmware/ || true
    install -m 644 ${B}/bl32.bin ${D}${nonarch_base_libdir}/firmware/ || true
    install -m 644 ${B}/bl32.elf ${D}${nonarch_base_libdir}/firmware/ || true
}

INSANE_SKIP:${PN}:append:ti-j72xx = " textrel"
