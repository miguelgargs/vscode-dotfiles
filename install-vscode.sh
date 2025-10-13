#!/bin/bash

echo "=== Installing VSCode keybindings... ==="

config_path="/home/$USER/.config/"
vscode_path="$config_path/Code/User/"

if [ ! -d "$DIRECTORY" ]; then
  mkdir -p "$config_path$vscode_path"
fi

cp ./vscode/keybindings.json $config_path$vscode_path

echo "=== Correctly installed keybindings to $config_path$vscode_path ==="
