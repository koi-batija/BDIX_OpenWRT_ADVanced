/bin/echo -n "cleaning bdix iptables ..."

# Run iptable commands
iptables -t nat -F BDIX
iptables -t nat -F PREROUTING
iptables -t nat -F POSTROUTING
iptables -F INPUT
iptables -F FORWARD
iptables -t nat -X BDIX

/bin/echo " done"