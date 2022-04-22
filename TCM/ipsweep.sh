#!/bin/bash
for ip in `seq 1 254`; do
ping -c l $1.$ip |grep "64 Bytes" | cut -d " " -f 4| tr -d ":" &
done

./ipsweep.sh 192.168.0
