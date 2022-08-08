#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i "s/zh_cn/en/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/+@LUCI_LANG_zh-cn/+@LUCI_LANG_en/g" package/lean/default-settings/Makefile
sed -i "/po2lmo ./po/zh-cn/default.po/d" package/lean/default-settings/Makefile
