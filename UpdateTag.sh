#!/bin/bash
#
mosdns_working_dir="/etc/mosdns"
mkdir -p /tmp/easymosdns && curl https://raw.githubusercontent.com/IceCodeNew/4Share/master/geoip_china/china_ip_list.txt > /tmp/easymosdns/geoip_cn.txt && curl https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/reject-list.txt > /tmp/easymosdns/geosite_category-ads-all.txt && curl https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/proxy-list.txt > /tmp/easymosdns/geosite_geolocation-!cn.txt && curl https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt > /tmp/easymosdns/geosite_cn.txt && \cp -rf /tmp/easymosdns/*.txt $mosdns_working_dir/ && rm -rf /tmp/easymosdns/* && echo 'update successful'
