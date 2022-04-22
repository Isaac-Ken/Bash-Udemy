#!/bin/bash
if [ "$1"=="" ]
then
echo "You forgot an IP address"
echo "Syntax: .ipsweep.sh 192.168.0"

else
for ip in `seq 1 254`; do
ping -c l $1.$ip |grep "64 Bytes" | cut -d " " -f 4| tr -d ":" &
done
fi
