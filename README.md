# Squid Proxy Installer

#!/bin/bash

############################################################
#Squid Proxy Installer
#Squid Installer
#Author: Hostycare Official
#Blog: https://www.hostycare.com/
...
Github: https://github.com/Hostycares/Hostycare-squid-proxy-installer

Web: https://www.hostycare.com/

If you need professional assistance, reach out to

https://www.hostycare.com//contact-us
...
############################################################

'''
**Squid Proxy Installer : 3128, 5515, 8080, 8000, 9090
**Author: support@hostycare.com
Blog: https://www.hostycare.com/

'''

Auto install Squid 3 proxy on following linux OS.

- Ubuntu 14.04, 16.04, 18.04, 20.04, 22.04
- Debian 8, 9, 10, 11, 12
- CentOS 7, 8
- CentOS Steam 8, 9
- AlmaLinux 8, 9

## Install Squid

To install, run the script

```
wget https://raw.githubusercontent.com/Hostycares/Hostycare-squid-proxy-installer/main/squid3-install.sh -O squid3-install.sh
sudo bash squid3-install.sh

```

## Videos - How to install Squid Proxy Server.

# Create Proxy Users

To create users, run

```
squid-add-user
```

OR run following commands

```
sudo /usr/bin/htpasswd -b -c /etc/squid/passwd USERNAME_HERE PASSWORD_HERE
```

To update password for am existing user, run

```
sudo /usr/bin/htpasswd /etc/squid/passwd USERNAME_HERE
```

replace USERNAME_HERE and PASSWORD_HERE with your desired user name and password.

Reload squid proxy

```
sudo systemctl reload squid
```

# Configure Multiple IP Address

NOTE: This is only needed if you have more than one IP on your server.

Before you can configure squid to use muliple IP address, you need to add IP to your server and you should be able to connect to server using these IPs.

Once IP added to your server, you can configure it to use with squid proxy by running following command

```
wget https://raw.githubusercontent.com/Hostycares/Hostycare-squid-proxy-installer/main/squid-conf-ip.sh
sudo bash squid-conf-ip.sh
```

# Change Squid Proxy Port

Default squid proxy port is 3128. This blog post will show how to change squid port.

# Support

If you need professional assistance, reach out to

'''
Author: support@hostycare.com
Blog: https://www.hostycare.com/contact-us
'''
