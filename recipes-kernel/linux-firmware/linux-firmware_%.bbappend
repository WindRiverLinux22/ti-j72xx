PACKAGE_ARCH:ti-j72xx = "${MACHINE_ARCH}"
FILESEXTRAPATHS:prepend:ti-j72xx := "${THISDIR}/files:"

SRC_URI:append:ti-j72xx = "\
	file://pvdec_full_bin.fw \
"

TARGET = "pvdec_full_bin.fw"

do_install:append:ti-j72xx() {
	install -m 0644 ${WORKDIR}/${TARGET} ${D}${nonarch_base_libdir}/firmware/${TARGET}
}

FILES:${PN}-pvdec-full-bin:ti-j72xx = "\
        ${nonarch_base_libdir}/firmware/${TARGET} \
"

COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"

LICENSE:${PN}:append:ti-j72xx = "\
	& Firmware-cadence \
"

LICENSE:append:ti-j72xx = "\
	& Firmware-cadence \
"

FILES:${PN}-cadence:ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/cadence/mhdp8546.bin \
"
FILES:${PN}-cadence-license:ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/LICENCE.cadence \
"
RDEPENDS:${PN}-cadence:ti-j72xx += "${PN}-cadence-license"
LICENSE:${PN}-cadence:ti-j72xx       	= "Firmware-cadence"
LICENSE:${PN}-cadence-license:ti-j72xx  = "Firmware-cadence"

PACKAGES:prepend:ti-j72xx = "\
	${PN}-cadence \
	${PN}-cadence-license \
	${PN}-pvdec-full-bin \
	"
