#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/openwrt/openwrt / Branch: main
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git clash https://github.com/vernesong/OpenClash.git' feeds.conf.default
sed -i '$a src-git mosdns https://github.com/sbwml/luci-app-mosdns.git' feeds.conf.default
sed -i '$a src-git zerotier https://github.com/zerotier/ZeroTierOne.git' feeds.conf.default

# other
# rm -rf package/utils/{ucode,fbtest}

