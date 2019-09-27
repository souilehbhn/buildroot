################################################################################
#
# Pangolin
#
################################################################################

G2O_VERSION = 9b41a4ea5ade8e1250b9c1b279f3a9c098811b5a  #20170730_git
G2O_SITE = $(call github,RainerKuemmerle,g2o,$(G2O_VERSION))
G2O_INSTALL_STAGING = YES
G2O_DEPENDENCIES = eigen suitesparse
G2O_CONF_OPTS += -DARCH="arm"
$(eval $(cmake-package))
