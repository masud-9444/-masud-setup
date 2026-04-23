#!/bin/bash

# 1. जरूरी टूल्स
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git -y
gem install lolcat

# 2. .bashrc सेटअप (Sober and Powerful)
cat <<'EOF' > ~/.bashrc
clear

# सिंपल और क्लासी बैनर
figlet -f small "MASUD" | lolcat
echo "────────────────────────────────────────────────" | lolcat
echo "  LOGGED AS: MASUD | IP: HIDDEN | MODE: ELITE " 
echo "────────────────────────────────────────────────" | lolcat

# अब तक का सबसे बेहतरीन और प्रोफेशनल प्रॉम्प्ट (Minimalist)
export PS1='\[\e[1;31m\][\[\e[1;37m\]MASUD\[\e[1;31m\]]\[\e[1;32m\] \w \[\e[1;31m\]# \[\e[0m\]'

# बैकग्राउंड में हल्का सा मैट्रिक्स इफ़ेक्ट (सिर्फ 2 सेकंड)
(timeout 2 cmatrix -a -b -C green)
EOF

chmod +x ~/.bashrc
clear
echo "Done! मसूद भाई, अब चेक करें। यह वाला एकदम सॉलिड है।" | lolcat
