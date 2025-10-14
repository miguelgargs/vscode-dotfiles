# vscode-dotfiles
Dotfiles repo for migrating my VSCode settings anywhere else

Path: vscode Linux
```bash
/home/${USER}/.config/Code/User/keybindings.json
```

## Zed 
Path: 
```bash
/home/${USER}/.config/zed/settings.json
```

Theme: `Gruvbox Dark Medium`

Script for changing Linux language to English and set the Spanish keyboard layout:
```bash
#!/bin/bash

# Set system language to English (US)
export LANG=en_US.UTF-8
export LANGUAGE=en_US:en
sudo locale-gen en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8

# Set keyboard layout to Spanish
setxkbmap es

# Optional: Make keyboard layout change permanent
echo 'XKBLAYOUT="es"' | sudo tee /etc/default/keyboard
sudo dpkg-reconfigure -f noninteractive keyboard-configuration

echo "Language set to English (US) and keyboard layout set to Spanish"
```
