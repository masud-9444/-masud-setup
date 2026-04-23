#!/bin/bash

# 1. जरूरी प्रीमियम टूल्स
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git -y
gem install lolcat

# 2. .bashrc का मास्टर कॉन्फ़िगरेशन
cat <<'EOF' > ~/.bashrc
clear

# चमकता हुआ (Glow) एनीमेटेड बैनर
echo "------------------------------------------------" | lolcat
figlet -f slant "MASUD VIP" | lolcat -a -d 1
echo "------------------------------------------------" | lolcat
echo "  [+] SYSTEM STATUS: SECURE" | lolcat
echo "  [+] USER: MASUD (ELITE DEVELOPER)" | lolcat
echo "------------------------------------------------" | lolcat

# $ की जगह अल्ट्रा स्टाइलिश प्रॉम्प्ट (Neon Colors)
export PS1='\[\e[1;32m\]┌──(\[\e[1;33m\]⚡MASUD\[\e[1;32m\])-[\[\e[1;37m\]@VIP-SYSTEM\[\e[1;32m\]]\n\[\e[1;32m\]└─\[\e[1;31m\]>> \[\e[0m\]'

# नंबर गिरने वाला जादू (Hacker Matrix) - ऑटोमैटिक 3 सेकंड बाद बंद होगा
# -u 10 (तेजी से गिरेगा), -C cyan (बेहतरीन कलर)
(sleep 1 && timeout 4 cmatrix -a -b -u 10 -C cyan)
EOF

# 3. परमिशन और फिनिशिंग
chmod +x ~/.bashrc
clear
echo "मसूद भाई, अब आपका टर्मक्स 'ELITE VIP' बन चुका है!" | lolcat -a -d 10
echo "बस 'source ~/.bashrc' टाइप करें या टर्मक्स रीस्टार्ट करें।" | lolcat
