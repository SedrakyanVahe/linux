#!/bin/bash

while true; do
cd /etc/

rm -r resolv.conf
touch resolv.conf
echo nameserver 1.1.1.1 | cat > resolv.conf
sleep 300
done














