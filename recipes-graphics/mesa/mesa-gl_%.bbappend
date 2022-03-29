RDEPENDS:libgl-mesa:ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "ti-img-rogue-umlibs", "", d)}"
J7-GPU:ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "yes", "no", d)}"

do_install:append:ti-j72xx () {
    if [ ${J7-GPU} = "yes" ]; then
        rm -rf ${D}${includedir}/KHR \
        rm -rf ${D}${libdir}/libglapi.* \
        rm ${D}${libdir}/pkgconfig/dri.pc \
        rm -rf ${D}${libdir}/dri 
    fi
}
