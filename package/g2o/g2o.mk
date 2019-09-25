################################################################################
#
# Pangolin
#
################################################################################

G2O_VERSION = 20170730_git
G2O_SITE = $(call github,RainerKuemmerle,g2o,$(G2O_VERSION))
G2O_INSTALL_STAGING = YES
G2O_DEPENDENCIES = eigen
G2O_CONF_OPTS += -DARCH="arm"
$(eval $(cmake-package))
