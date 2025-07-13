#!/bin/bash
echo "╔═════════════════════════╗"
echo "║     PhantomSSID v1.0    ║"
echo "╚═════════════════════════╝"

PS3="Choose module: "
options=("Capture Handshake" "Jam AP" "Fake AP" "Start DNS Spoof" "Start Portal" "Validate Password" "Exit")
select opt in "${options[@]}"
do
  case $opt in
    "Capture Handshake")
      bash capture_handshake.sh
      ;;
    "Jam AP")
      bash jammer.sh
      ;;
    "Fake AP")
      bash fake_ap.sh
      ;;
    "Start DNS Spoof")
      bash dns_spoof.sh
      ;;
    "Start Portal")
      python3 portal/server.py
      ;;
    "Validate Password")
      bash validate.sh
      ;;
    "Exit")
      break
      ;;
    *) echo "Invalid option" ;;
  esac
done

