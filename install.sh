#!/bin/bash
set -e

echo "Installing power-resolution CLI tool..."

# Ensure python3-dbus is installed
if ! python3 -c "import dbus" 2>/dev/null && ! /usr/bin/python3 -c "import dbus" 2>/dev/null; then
    echo "Installing required python3-dbus package..."
    sudo apt update && sudo apt install -y python3-dbus
fi

# Create local bin directory
mkdir -p ~/.local/bin

# Copy executable
cp power-resolution ~/.local/bin/power-resolution
chmod +x ~/.local/bin/power-resolution

# Ensure ~/.local/bin is in PATH (informational)
case ":$PATH:" in
    *":$HOME/.local/bin:"*) ;;
    *) echo "Note: Make sure ~/.local/bin is in your PATH in ~/.bashrc or ~/.zshrc" ;;
esac

echo "Installation complete!"
echo "Run 'power-resolution setup' to configure your display settings for AC and battery."
