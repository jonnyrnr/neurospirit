#!/data/data/com.termux/files/usr/bin/bash

clear
echo "🧠 NEUROSPIRIT CYBERDECK BOOTSTRAP"

pkg update -y && pkg upgrade -y

pkg install -y git curl wget proot-distro termux-x11-nightly pulseaudio

echo "🐧 Installing Alpine Linux container..."
proot-distro install alpine

echo "⚡ Creating launcher..."
cat > $HOME/start-neurodeck.sh << 'EOF'
termux-x11 :0 &
pulseaudio --start
proot-distro login alpine --shared-tmp
EOF

chmod +x $HOME/start-neurodeck.sh

echo "🔐 Generating SSH (if missing)..."
[ ! -f ~/.ssh/id_ed25519 ] && ssh-keygen -t ed25519 -N "" -f ~/.ssh/id_ed25519

echo "🧠 SYSTEM READY"
echo "Run: ./start-neurodeck.sh"
