#!/bin/bash

read -p "Enter target BSSID: " bssid
read -p "Enter target channel: " channel
read -p "Enter monitor interface (e.g. wlan0mon): " iface

mkdir -p handshakes

echo "[*] Starting handshake capture..."
gnome-terminal -- bash -c "airodump-ng --bssid $bssid --channel $channel --write handshakes/capture $iface"

