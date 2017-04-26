VPBUS_GPIOLIB_VERSION = 0.1
VPBUS_GPIOLIB_SITE = $(BR2_EXTERNAL)/package/vpbus_gpiolib
VPBUS_GPIOLIB_SITE_METHOD = local
VPBUS_GPIOLIB_LICENSE = GPLv3+

VPBUS_GPIOLIB_DEPENDENCIES = linux

define VPBUS_GPIOLIB_BUILD_CMDS
	$(MAKE) -C $(LINUX_DIR) $(LINUX_MAKE_FLAGS) M=$(@D)
endef

define VPBUS_GPIOLIB_INSTALL_TARGET_CMDS
	$(MAKE) -C $(LINUX_DIR) $(LINUX_MAKE_FLAGS) M=$(@D) modules_install
endef

$(eval $(generic-package))
