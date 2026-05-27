#!/data/data/com.termux/files/usr/bin/bash

echo "🔁 Syncing NeuroSpirit..."

git add .
git commit -m "auto-sync: $(date)" 2>/dev/null
git push
