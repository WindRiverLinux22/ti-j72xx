COMPATIBLE_MACHINE = "ti-j72xx"

SRCREV = "5ef38353c38d921a65ea6df75c7b6ce710b66034"
PV = "1.13.5776728"
TARGET_PRODUCT = "j721e_linux"
PR = "r3"

do_install:append:ti-j72xx () {

    if [ ${libdir} = "/usr/lib64" ]; then
        mkdir -p ${D}/usr/lib64/
        mv ${D}/usr/lib/lib* ${D}/usr/lib64/
        mv ${D}/usr/lib/pkgconfig ${D}/usr/lib64/
    fi
}

FILES:${PN} += " /lib/firmware/"
FILES:${PN} += " /usr/lib/"


