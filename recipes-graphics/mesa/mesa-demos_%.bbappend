PACKAGECONFIG:remove:ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "glx glu glew", "", d)}"
