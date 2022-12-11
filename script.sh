echo Basic system information
HOST=$(hostname)
CURRENTUSER=$(whoami)
IPADDRESS=$(hostname -I | cut -d '' -f1)
CURRENTDATE=$(date)
echo "today is: $CURRENTDATE"
echo "Host is: $HOST ($IPADDRESS)"
echo "User info for $CURRENTUSER:"

date 
echo user information
uname -a
echo version information
cat /proc/version
echo status of modules
lsmod
echo Account information
cat /etc/passwd
cat /etc/shadow
cut -d: -f1 /etc/passwd
echo last logged on user
cat /var/log/auth.log
cat /var/log/dpkg.log | grep installed
netstat
iptables -L
fdisk -l
find / -type d -name ".*"
utmpdump /var/run/utmp
