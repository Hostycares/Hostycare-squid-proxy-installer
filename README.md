# Squid Proxy Installer

https://www.hostycare.com/contact-us

Auto install Squid 3 proxy on following linux OS.

* Ubuntu 24.04, 22.04, 20.04, 18.04 
* Debian 12, 11, 10, 9, 8
* CentOS 8
* CentOS Steam 9, 8
* AlmaLinux 9, 8


## Install Squid

To install, run the script

```
wget https://raw.githubusercontent.com/Hostycares/Hostycare-squid-proxy-installer/master/squid3-install.sh -O squid3-install.sh
sudo bash squid3-install.sh
```

## Videos - How to install Squid Proxy Server.

[How to install Squid Proxy Server in Hostycare VPS]( https://www.youtube.com/watch?v=miYLwajjk2g&t=211s )


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
wget https://raw.githubusercontent.com/Hostycares/Hostycare-squid-proxy-installer/master/squid-conf-ip.sh
sudo bash squid-conf-ip.sh
```

# Change Squid Proxy Port

Default squid proxy port is 3128. This blog post will show how to change squid port.

https://www.hostycare.com/contact-us

# Support

If you need professional assistance, reach out to

https://www.hostycare.com/contact-us
