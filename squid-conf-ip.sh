#!/bin/bash
############################################################
# Squid Proxy Installer
# Author: Hostycare
# Email: support@hostycare.com
# Github: https://github.com/Hostycares/Hostycare-squid-proxy-installer
# Web: https://www.hostycare.com/
# If you need professional assistance, reach out to
# Email : support@hostycare.com
# https://www.hostycare.com/contact-us
############################################################

IP_ALL=$(/sbin/ip -4 -o addr show scope global | awk '{gsub(/\/.*/,"",$4); print $4}')

IP_ALL_ARRAY=($IP_ALL)

SQUID_CONFIG="\n"

for IP_ADDR in ${IP_ALL_ARRAY[@]}; do
    ACL_NAME="proxy_ip_${IP_ADDR//\./_}"
    SQUID_CONFIG+="acl ${ACL_NAME}  myip ${IP_ADDR}\n"
    SQUID_CONFIG+="tcp_outgoing_address ${IP_ADDR} ${ACL_NAME}\n\n"
done

echo "Updating squid config"

echo -e $SQUID_CONFIG >> /etc/squid/squid.conf

echo "Restarting squid..."

systemctl restart squid

echo "Done"
