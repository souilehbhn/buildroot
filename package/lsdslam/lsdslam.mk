################################################################################
#
# LSD_SLAM
#
################################################################################

LSDSLAM_VERSION = 828e4ec7ad79f55075e71f9058e0ba51641824b9
LSDSLAM_SITE = $(call github,souilehbhn,lsd_slam,$(LSDSLAM_VERSION))
LSDSLAM_DEPENDENCIES = opencv3 boost eigen pangolin g2o 
LSDSLAM_SUBDIR = lsd_slam_core/src

$(eval $(cmake-package))
