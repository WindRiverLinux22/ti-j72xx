PACKAGECONFIG:remove:ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "glx xwayland", "", d)}"
