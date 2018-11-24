#!/bin/bash
sudo apt-get update
sudo apt-get install -y xfce4 gnome-icon-theme-full

# Install xfce4 terminal since by default xfce4 only includes xterm
sudo apt-get install -y xfce4-terminal

# Fix the errors encountered while processing dictionaries-common
sudo /usr/share/debconf/fix_db.pl

# config vboxclient
sudo VBoxClient --all
sudo VBoxClient --clipboard
sudo VBoxClient --draganddrop
sudo VBoxClient --display
sudo VBoxClient --checkhostversion
sudo VBoxClient --seamless

# permit anyone to start the gui
sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

echo "Setup finished"
