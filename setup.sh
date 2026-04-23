#!/bin/bash

# 1. जरूरी चीजें इंस्टॉल करना
pkg update && pkg upgrade -y
pkg install figlet cmatrix ruby git -y
gem install lolcat

# 2. .bashrc सेटअप (ध्यान दें: यहाँ PS1 के आगे \ लगा है ताकि यह काम करे)
cat <<EOF > ~/.bashrc
clear
figlet -f slant "MASUD" | lolcat
echo "=======================================" | lolcat
echo "   WELCOME MASUD | DEVELOPER MODE ON   " | lolcat
echo "=======================================" | lolcat

# यह लाइन $ साइन को हटाकर ⚡MASUD सेट करेगी
export PS1='\[\e[1;33m\]⚡MASUD\[\e[1;36m\] @SYSTEM \[\e[1;31m\]>> \[\e[0m\]'

sleep 2
cmatrix -a -s -C red
EOF

# 3. परमिशन देना
chmod +x ~/.bashrc

clear
echo "सेटअप पूरा! मसूद भाई, अब Termux को Exit करके दोबारा खोलें।" | lolcat
