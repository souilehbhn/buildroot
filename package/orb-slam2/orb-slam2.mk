################################################################################
#
# ORB-SLAM2
#
################################################################################

ORB_SLAM2_VERSION = a38c0929934d6351be93c1d8d01a59739838493c
ORB_SLAM2_SITE = $(call github,souilehbhn,ORB_SLAM2,$(ORB_SLAM2_VERSION))
ORB_SLAM2_DEPENDENCIES = opencv pangolin eigen
ORB_SLAM2_CONF_OPTS += -DCMAKE_CXX_FLAGS="$(TARGET_CXXFLAGS) -std=c++11"

$(eval $(cmake-package))
