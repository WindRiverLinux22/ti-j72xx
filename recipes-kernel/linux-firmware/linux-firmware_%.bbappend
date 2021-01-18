LICENSE_${PN}_ti-j72xx =+ "\
	& Firmware-cadence \
"
FILES_${PN}-cadence_ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/cadence/mhdp8546.bin \
"
FILES_${PN}-cadence-license_ti-j72xx = " \
  ${nonarch_base_libdir}/firmware/LICENCE.cadence \
"
RDEPENDS_${PN}-cadence_ti-j72xx += "${PN}-cadence-license"

PACKAGES_ti-j72xx =+ "\
	${PN}-cadence \
	${PN}-cadence-license \
"
