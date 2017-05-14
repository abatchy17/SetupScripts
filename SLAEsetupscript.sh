#!/bin/bash

# check if root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

cd ~/Desktop

# Compiler support, nasm and tools required for libemu
apt update && apt install gcc-multilib nasm autoconf libtool -y 

# Set up peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo "DONE! debug your program with gdb and enjoy"

# Set up libemu
git clone https://github.com/buffer/libemu.git
cd libemu
autoreconf -v -i
./configure --prefix=/opt/libemu; make install
