# Power Resolution & Scaling Manager for Ubuntu GNOME Wayland

Automatically switches your laptop display resolution and UI scale based on whether you are plugged into AC power or running on battery.

## Features
- **Native GNOME Wayland support:** Uses GNOME Mutter's D-Bus `ApplyMonitorsConfig` API directly.
- **Interactive Setup Wizard:** Automatically detects your internal display (e.g., `eDP-1`), queries supported modes and scales, and lets you choose your preferred AC and battery settings.
- **Automatic Background Monitoring:** Runs a lightweight systemd user service (`power-resolution-monitor.service`) that watches power supply state changes without polling overhead.
- **Pyenv Compatible:** Explicitly utilizes `/usr/bin/python3` to ensure compatibility with Ubuntu's `python3-dbus` system package.

## Installation
```bash
./install.sh
```

## Usage
Run the interactive setup wizard:
```bash
power-resolution setup
```

Other commands:
- `power-resolution status`: View current configuration and systemd service status.
- `power-resolution apply`: Manually trigger application of resolution/scale based on current power.
- `power-resolution enable`: Enable automatic power monitoring service.
- `power-resolution disable`: Disable automatic power monitoring service.
- `power-resolution uninstall`: Remove config, scripts, and systemd services.
