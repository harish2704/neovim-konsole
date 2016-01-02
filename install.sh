#!/usr/bin/env bash

appRoot=$(dirname $(readlink -f $0));

cd $appRoot;
echo "Installing desktop file and icons..."
cp -v --parents -r share $HOME/.local/

echo "Installing Konsole profile and keybindings..."
cp -v --parents -r konsole $HOME/.kde/share/apps/
