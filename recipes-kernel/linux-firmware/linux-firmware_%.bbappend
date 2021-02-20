LICENSE_${PN}_append_ti-j72xx = "\
	& Firmware-cadence \
"

LICENSE_append_ti-j72xx = "\
	& Firmware-cadence \
"

FILES_${PN}-cadence_ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/cadence/mhdp8546.bin \
"
FILES_${PN}-cadence-license_ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/LICENCE.cadence \
"
RDEPENDS_${PN}-cadence_ti-j72xx += "${PN}-cadence-license"
LICENSE_${PN}-cadence_ti-j72xx       	= "Firmware-cadence"
LICENSE_${PN}-cadence-license_ti-j72xx  = "Firmware-cadence"

PACKAGES_prepend_ti-j72xx = "\
	${PN}-cadence \
	${PN}-cadence-license \
	"
