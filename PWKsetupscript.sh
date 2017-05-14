#!/bin/bash

# check if root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
cd ~/Desktop

# Compiler support
apt update && apt install gcc-multilib -y 

# Favorite repositories
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/g0tmi1k/debian-ssh.git
git clone https://github.com/abatchy17/WindowsExploits.git
git clone https://github.com/maurosoria/dirsearch.git
git clone https://github.com/crowbar/crowbar.git
