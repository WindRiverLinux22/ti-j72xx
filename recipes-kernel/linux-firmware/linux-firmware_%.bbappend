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
	"
