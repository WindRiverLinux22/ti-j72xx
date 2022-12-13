COMPATIBLE_MACHINE = "ti-j72xx"

SRCREV = "fba0c770b712640ab3761dbe8369d43f89f616ed"
TARGET_PRODUCT:ti-j72xx = "j721e_linux"
PR = "r2"

do_install:append:ti-j72xx () {

    if [ ${libdir} = "/usr/lib64" ]; then
        mkdir -p ${D}/usr/lib64/
        mv ${D}/usr/lib/lib* ${D}/usr/lib64/
        mv ${D}/usr/lib/pkgconfig ${D}/usr/lib64/
    fi
}

FILES:${PN} += " /lib/firmware/"
FILES:${PN} += " /usr/lib/"


