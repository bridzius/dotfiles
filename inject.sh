#!/bin/bash

read -p "This will make changes to your editor config. Ok? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
	exit 1
fi

# Injects environment config to correct locations
echo "Moving init.lua to neovim config"
cp -f init.lua ~/.config/nvim/ && echo "COMPLETE"

echo "Moving lua plugins to neovim config"
cp -fr lua ~/.config/nvim/ && echo "COMPLETE"
