# BDIX Bypass Service on OpenWRT Router (ADVANCED)
To install and configure Socks5 proxy, ensure you have installed OpenWrt on your router. Then run commands as follows:


# BDIX proxy service installation:
Run the following command to install BDIX proxy extension automatically:
```
cd /tmp && wget https://github.com/KZTanvir/BDIX_OpenWRT_ADVanced/raw/master/install.sh && chmod +x install.sh && clear && sh install.sh && rm install.sh
```
Just run it and wait for completion. And enjoy.

## To update proxy IP, Port, Username & Password
```
vi /etc/bdix.conf
```
## To update the whitelist Domain, DomainKeyword, and IP Address
```
vi /etc/whitelistDomain.txt
```
```
vi /etc/whitelistDK.txt
```
```
vi /etc/whitelistIP.txt
```
After the update press `esc` key then `:wq` to save or `:q!` to discard changes


# How to start and stop BDIX:

### To start BDIX proxy bypass
```
service bdix start
```

### To stop BDIX proxy bypass
```
service bdix stop
```

### To restart BDIX proxy bypass
```
service bdix restart
```

### To enable BDIX auto boot-start proxy
```
service bdix enable
```

### To disable BDIX auto boot-start proxy
```
service bdix disable
```
