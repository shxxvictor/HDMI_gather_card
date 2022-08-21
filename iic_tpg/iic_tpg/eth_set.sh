#!/bin/bash
route add default gw 192.168.100.1
echo nameserver 120.196.165.24 > /etc/resolv.conf