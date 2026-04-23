#!/bin/bash

# --- MASUD'S ULTIMATE VIP SETUP ---

# 1. अपडेट और जरूरी टूल्स इंस्टॉल करना
echo -e "\e[1;32m[+] पैकेजेस अपडेट हो रहे हैं, मसूद भाई...\e[0m"
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git -y
gem install lolcat

# 2. .bashrc फाइल बनाना (यही टर्मक्स का असली लुक बदलेगा)
echo -e "\e[1;32m[+] आपका स्टाइलिश प्रॉम्प्ट और बैनर सेटअप हो रहा है...\e[0m"

cat <<EOF > ~/.bashrc
# --- मसूद का प्रीमियम लुक ---
clear

# स्टाइलिश नाम बैनर
figlet -f slant "MASUD" | lolcat

echo "=======================================" | lolcat
echo "   WELCOME MASUD | DEVELOPER MODE ON   " | lolcat
echo "=======================================" | lolcat

# यहाँ डॉलर साइन ($) को बदलकर स्टाइलिश बनाया गया है
PS1='\[\e[1;33m\]⚡MASUD\[\e[1;36m\] @SYSTEM \[\e[1;31m\]>> \[\e[0m\]'

# 2 सेकंड का गैप और फिर मैट्रिक्स शुरू
sleep 2
cmatrix -a -s -C red
EOF

# 3. परमिशन सेट करना
chmod +x ~/.bashrc

clear
echo "------------------------------------------------" | lolcat
echo "मसूद, आपका नया लुक (⚡) सेटअप हो गया है!" | lolcat
echo "अब बस Termux को बंद करके दोबारा खोलें।" | lolcat
echo "------------------------------------------------" | lolcat
