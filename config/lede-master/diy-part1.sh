#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add amlogic feed source
echo 'src-git amlogic https://github.com/ophub/luci-app-amlogic' >> feeds.conf.default

# PassWall2 frontend feed (official frontend project)
echo 'src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2' >> feeds.conf.default

# PassWall2 runtime dependencies feed (separated from frontend)
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >> feeds.conf.default

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}



