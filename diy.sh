#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#自定插件
git clone https://github.com/openwrt-develop/luci-theme-atmaterial package/luci-theme-atmaterial
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/Lienol/openwrt-package/tree/master/lienol/luci-app-passwall package/luci-app-passwall
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
git clone https://github.com/lisaac/luci-app-diskman package/luci-app-diskman

#更新feeds
./scripts/feeds update -a
./scripts/feeds install -a
