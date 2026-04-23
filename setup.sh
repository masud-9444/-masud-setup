#!/bin/bash

# --- मसूद का प्रीमियम टर्मक्स सेटअप ---

# 1. पुराने कचरे को साफ करना और जरूरी टूल्स इंस्टॉल करना
echo -e "\e[1;32m[+] पैकेजेस अपडेट हो रहे हैं, थोड़ा इंतज़ार करें मसूद भाई...\e[0m"
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git -y
gem install lolcat

# 2. .bashrc फाइल को ऑटोमैटिकली कॉन्फ़िगर करना
# यह हिस्सा आपके टर्मक्स को हर बार खुलने पर स्टाइलिश बनाएगा
echo -e "\e[1;32m[+] आपका VIP बैनर सेटअप हो रहा है...\e[0m"

cat <<EOF > ~/.bashrc
# --- MASUD'S DYNAMIC BANNER ---
clear
# स्टाइलिश नाम - 3D Look
figlet -f slant "MASUD" | lolcat

echo "=======================================" | lolcat
echo "   WELCOME MASUD | DEVELOPER MODE ON   " | lolcat
echo "=======================================" | lolcat

# 2 सेकंड का स्टाइलिश गैप
sleep 2

# मैट्रिक्स मोड (लाल गिरते हुए नंबर्स)
# -a (smooth animation), -s (hacker mode), -C red (color)
cmatrix -a -s -C red
EOF

# 3. फाइल को परमिशन देना और खत्म करना
chmod +x ~/.bashrc

clear
echo "------------------------------------------------" | lolcat
echo "मसूद, आपका GitHub सेटअप सफलतापूर्वक लोड हो गया है!" | lolcat
echo "अब बस Termux को बंद करके दोबारा खोलें।" | lolcat
echo "------------------------------------------------" | lolcat
