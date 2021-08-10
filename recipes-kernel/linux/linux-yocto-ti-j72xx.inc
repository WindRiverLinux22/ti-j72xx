#
# Copyright (C) 2020 Wind River Systems, Inc.
#

COMPATIBLE_MACHINE:ti-j72xx = "ti-j72xx"
TARGET_SUPPORTED_KTYPES:ti-j72xx = "standard"

KERNEL_VERSION_SANITY_SKIP = "1"
SRCREV_machine:ti-j72xx ?= "${AUTOREV}"
SRCREV_meta:ti-j72xx ?= "${AUTOREV}"
