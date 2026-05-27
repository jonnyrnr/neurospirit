#!/data/data/com.termux/files/usr/bin/bash

echo "🚀 Starting NeuroSpirit Cyberdeck..."

termux-x11 :0 &
pulseaudio --start

proot-distro login alpine --shared-tmp
