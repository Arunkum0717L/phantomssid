#!/bin/bash

read -p "Enter captured password: " pass
read -p "Enter path to .cap file: " cap

echo $pass > wordlist.txt
aircrack-ng -w wordlist.txt -b [BSSID] $cap

