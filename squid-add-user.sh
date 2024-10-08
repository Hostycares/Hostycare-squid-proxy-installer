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

if [ `whoami` != root ]; then
	echo "ERROR: You need to run the script as user root or add sudo before command."
	exit 1
fi

if [ ! -f /usr/bin/htpasswd ]; then
    echo "htpasswd not found"
    exit 1
fi

read -e -p "Enter Proxy username: " proxy_username

if [ -f /etc/squid/passwd ]; then
    /usr/bin/htpasswd /etc/squid/passwd $proxy_username
else
    /usr/bin/htpasswd -c /etc/squid/passwd $proxy_username
fi

systemctl reload squid > /dev/null 2>&1
service squid3 restart > /dev/null 2>&1
