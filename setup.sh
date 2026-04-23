#!/bin/bash

# 1. सभी जरूरी टूल्स एक साथ इंस्टॉल करना
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git python screenfetch -y
gem install lolcat

# 2. .bashrc का सबसे खतरनाक कॉन्फ़िगरेशन
cat <<'EOF' > ~/.bashrc
clear

# --- [1] चमकता हुआ एनिमेटेड बैनर ---
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
figlet -f slant "MASUD ANSH" | lolcat -a -d 1
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat

# --- [2] सिस्टम की पूरी जानकारी (Chamak के साथ) ---
date | lolcat
echo -e "\e[1;32m[●] DEVICE STATUS : \e[1;33mONLINE" | lolcat
echo -e "\e[1;32m[●] OWNER         : \e[1;36mMR. MASUD (ELITE DEVELOPER)" | lolcat
echo -e "\e[1;32m[●] PROJECT       : \e[1;35mJARVIS-AI & ESPORTS" | lolcat
echo -e "\e[1;32m[●] LOCATION      : \e[1;37mMuzaffarpur" | lolcat
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat

# --- [3] बैटरी और रैम जानकारी ---
termux-battery-status | grep -E "percentage|status" | lolcat
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat

# --- [4] ऑटोमैटिक मैट्रिक्स (Cyan Glow) ---
(timeout 3 cmatrix -a -b -u 10 -C cyan)

# --- [5] VIP डायनामिक प्रॉम्प्ट (Multi-Color) ---
export PS1='\[\e[1;31m\]┌─[\[\e[1;37m\]MASUD@VIP-TERMINAL\[\e[1;31m\]]─[\[\e[1;32m\]\w\[\e[1;31m\]]\n\[\e[1;31m\]└─\[\e[1;33m\]⚡\[\e[1;32m\]>> \[\e[0m\]'

# --- [6] कुछ खास शॉर्टकट्स (Aliass) ---
alias cls='clear && figlet MASUD | lolcat'
alias myip='curl ifconfig.me'
alias update='pkg update && pkg upgrade'

# --- [7] वेलकम मैसेज ---
echo "Welcome Back Masud! System is ready for Coding." | lolcat -a -d 10
EOF

# 3. फिनिशिंग
chmod +x ~/.bashrc
clear
echo "मसूद भाई, अब आपका 'ULTRA BEAST' सेटअप तैयार है!" | lolcat -a -d 5
