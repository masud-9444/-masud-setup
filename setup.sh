#!/bin/bash

# --- मसूद का ULTIMATE VIP SETUP (2026 Edition) ---

# 1. पुराने टूल्स को अपडेट करना
echo "Installing Ultra-VIP Assets..." | lolcat
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git -y
gem install lolcat

# 2. .bashrc को नए सिरे से लिखना (पुरानी सारी सेटिंग्स डिलीट हो जाएंगी)
cat <<'EOF' > ~/.bashrc
clear

# चमकता हुआ एनिमेटेड बैनर (Glow Effect)
echo "------------------------------------------------" | lolcat
figlet -f slant "MASUD VIP" | lolcat -a -d 1
echo "------------------------------------------------" | lolcat
echo "  [●] STATUS: ELITE DEVELOPER MODE ACTIVE" | lolcat
echo "  [●] OWNER: MASUD (VIP USER)" | lolcat
echo "------------------------------------------------" | lolcat

# $ की जगह डबल लाइन वाला प्रीमियम प्रॉम्प्ट
export PS1='\[\e[1;32m\]┌──(\[\e[1;33m\]⚡MASUD\[\e[1;32m\])-[\[\e[1;37m\]@VIP-SYSTEM\[\e[1;32m\]]\n\[\e[1;32m\]└─\[\e[1;31m\]>> \[\e[0m\]'

# नंबर गिरने वाला जादू (Automatic Hacker Matrix)
# यह 3 सेकंड तक चलेगा और अपने आप बंद हो जाएगा
(timeout 3 cmatrix -a -b -u 10 -C cyan)
EOF

# 3. परमिशन सेट करना
chmod +x ~/.bashrc

clear
echo "------------------------------------------------" | lolcat
echo "CONGRATULATIONS MASUD! VIP SETUP COMPLETE." | lolcat
echo "Please type: source ~/.bashrc" | lolcat
echo "------------------------------------------------" | lolcat
