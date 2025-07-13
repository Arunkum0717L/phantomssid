# phantomssid
**PhantomSSID** is a modular Wi-Fi social engineering toolkit inspired by Fluxion. It creates a rogue access point to mimic a real Wi-Fi network and captures WPA/WPA2 passwords through phishing techniques.

> ⚠️ For **educational and authorized penetration testing** only. Unauthorized use is **illegal**.

---

## ✨ Features

- 📡 **Capture WPA Handshake** using `airodump-ng`
- 🚫 **Deauthenticate Clients** from the target AP
- 🛰️ **Launch a Rogue Access Point** (same SSID)
- 🌐 **Fake Login Portal** served over HTTP
- 🎯 **Capture and Validate Wi-Fi Passwords**
- 🛠️ Modular design for easy customization

---

## 📁 Directory Structure

phantomssid/
├── start.sh # Main launcher
├── capture_handshake.sh # Handshake capture script
├── jammer.sh # Deauth clients
├── fake_ap.sh # Rogue AP via hostapd
├── dns_spoof.sh # DNS spoofing using dnsmasq
├── validate.sh # Check credentials against capture
├── portal/
│ ├── index.html # Fake router login page
│ ├── server.py # Credential receiver
├── creds/ # Stores captured passwords
├── README.md # You're here


---

## 🧰 Requirements

- Linux (Kali, Parrot, or any pentest distro)
- `aircrack-ng`
- `hostapd`
- `dnsmasq`
- `python3` (with built-in HTTP server)
- 2 Wi-Fi adapters (1 for monitoring, 1 for AP)

---

## 🚀 Usage

1. **Make scripts executable**
   ```bash
   chmod +x *.sh

    Run the main launcher

./start.sh

Follow the menu to:

    Capture handshake

    Jam clients

    Launch rogue AP

    Start phishing server

    Validate captured credentials

Captured passwords will be saved in:

    creds/captured.txt

📌 Notes

    The phishing portal mimics a Wi-Fi router login page.

    Only one client adapter is used for fake AP; another for monitoring/deauth.

    The entered password is checked against the real WPA handshake.

📛 Legal Disclaimer

This tool is intended only for:

    Ethical hacking

    Educational demonstrations

    Red team operations with explicit permission

You are solely responsible for any misuse. Unauthorized attacks are criminal offenses.
❤️ Credits

    Inspired by Fluxion

    Built with bash, Python, and aircrack-ng

📞 Contact

Project by [Arunkum0717L]
For contributions, ideas, or issues, open a GitHub issue or fork and submit a PR.
