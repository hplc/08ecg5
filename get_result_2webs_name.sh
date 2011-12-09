#!/bin/sh

for i in 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58
do
# echo 192.168.61.$i
wget --tries 1 --timeout 2 http://ec08g5-$i.baidu.com
wget --tries 1 --timeout 2 http://vip$i.baidu.com
i=$(($i+1))
done
