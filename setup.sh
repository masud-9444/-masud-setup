#!/bin/bash

# 1. पुराने कचरे को साफ करना और टूल्स इंस्टॉल करना
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git -y
gem install lolcat

# 2. .bashrc फाइल को नए सिरे से बनाना
# यहाँ हम पुरानी फाइल को पूरी तरह डिलीट करके नई फाइल लिख रहे हैं
cat <<'EOF' > ~/.bashrc
clear

# स्टाइलिश बैनर
figlet -f slant "MASUD" | lolcat
echo "=======================================" | lolcat
echo "   WELCOME MASUD | DEVELOPER MODE ON   " | lolcat
echo "=======================================" | lolcat

# यही वो खास लाइन है जो $ को हटाकर ⚡MASUD सेट करेगी
export PS1='\[\e[1;33m\]⚡MASUD\[\e[1;36m\] @SYSTEM \[\e[1;31m\]>> \[\e[0m\]'

# 2 सेकंड का गैप और मैट्रिक्स जादू
sleep 2
cmatrix -a -s -C red
EOF

# 3. परमिशन देना
chmod +x ~/.bashrc

clear
echo "------------------------------------------------" | lolcat
echo "सेटअप पूरा! मसूद भाई, अब बस Termux को EXIT करके खोलें।" | lolcat
echo "------------------------------------------------" | lolcat
