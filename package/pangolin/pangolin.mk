################################################################################
#
# Pangolin
#
################################################################################

PANGOLIN_VERSION = ad8b5f83222291c51b4800d5a5873b0e90a0cf81
PANGOLIN_SITE = $(call github,stevenlovegrove,Pangolin,$(PANGOLIN_VERSION))
PANGOLIN_DEPENDENCIES = libgl libglew
ifeq ($(BR2_PACKAGE_EIGEN),y)
PANGOLIN_DEPENDENCIES += eigen
endif
ifeq ($(BR2_PACKAGE_FFMPEG),y)
PANGOLIN_DEPENDENCIES += ffmpeg
endif
ifeq ($(BR2_PACKAGE_TIFF),y)
PANGOLIN_DEPENDENCIES += tiff
endif
ifeq ($(BR2_PACKAGE_LIBPNG),y)
PANGOLIN_DEPENDENCIES += libpng
endif
ifeq ($(BR2_PACKAGE_JPEG),y)
PANGOLIN_DEPENDENCIES += libjpeg
endif
$(eval $(cmake-package))
