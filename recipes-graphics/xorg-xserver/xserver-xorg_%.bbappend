PACKAGECONFIG:remove:ti-j72xx = "${@bb.utils.contains("MACHINE_FEATURES", "gpu", "glx xwayland", "", d)}"
DEPENDS:append:ti-j72xx = "${@bb.utils.contains('PACKAGECONFIG', 'dri3', ' libxshmfence', '', d)}"
