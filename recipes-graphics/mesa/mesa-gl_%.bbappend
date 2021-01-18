RDEPENDS_libgl-mesa_ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "ti-img-rogue-umlibs", "", d)}"
J7-GPU_ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "yes", "no", d)}"

do_install_append_ti-j72xx () {
    if [ ${J7-GPU} = "yes" ]; then
        rm -rf ${D}${includedir}/KHR \
        rm -rf ${D}${libdir}/libglapi.*
    fi
}
