PACKAGECONFIG:append:ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", " egl glesv2", "", d)}"
PACKAGECONFIG:remove:ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "opengl", "", d)}"
