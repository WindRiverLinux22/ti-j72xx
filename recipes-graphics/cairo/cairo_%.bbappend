PACKAGECONFIG_append_ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", " egl glesv2", "", d)}"
PACKAGECONFIG_remove_ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "opengl", "", d)}"
