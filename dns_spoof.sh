#!/bin/bash

cat > dnsmasq.conf <<EOF
interface=wlan1
dhcp-range=192.168.1.2,192.168.1.100,12h
dhcp-option=3,192.168.1.1
dhcp-option=6,192.168.1.1
address=/#/192.168.1.1
EOF

echo "[*] Starting dnsmasq..."
dnsmasq -C dnsmasq.conf

