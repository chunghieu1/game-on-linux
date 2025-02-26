#!/bin/bash
# install_wine_proton.sh
# This script installs and configures Wine/Proton on your Linux system (Ubuntu-based).

# Check for root privileges (or use sudo for installation commands)
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root (using sudo)!"
  exit 1
fi

echo "Updating package lists..."
apt update

echo "Installing Wine (including wine64 and wine32)..."
apt install -y wine wine64 wine32

# Note: Proton is typically managed through Steam, so ensure you have Steam installed if you intend to use Proton.
echo "Note: Proton is primarily managed via Steam. Please ensure Steam is installed if you need Proton support."

echo "Wine/Proton installation complete."

echo "Launching Wine configuration (winecfg)..."
# Set the default Wine prefix
export WINEPREFIX="$HOME/.wine"
winecfg

echo "Wine configuration complete. You can further customize it as needed."
