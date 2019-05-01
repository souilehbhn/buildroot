################################################################################
#
# ORB-SLAM2
#
################################################################################

ORB_SLAM2_VERSION = 0.1-beta
ORB_SLAM2_SITE = $(call github,souilehbhn,ORB_SLAM2,$(ORB_SLAM2_VERSION))
ORB_SLAM2_DEPENDENCIES = opencv3 pangolin eigen
ORB_SLAM2_CONF_OPTS += -DCMAKE_CXX_FLAGS="$(TARGET_CXXFLAGS) -std=c++11"

$(eval $(cmake-package))
