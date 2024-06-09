sudo add-apt-repository universe -y
sudo add-apt-repository ppa:agornostal/ulauncher -y
sudo apt update -y
sudo apt install -y ulauncher

# Start ulauncher to have it populate config before we overwrite
mkdir -p ~/.config/autostart/
rm -rf ~/.config/autostart/ulauncher.desktop
ln -s ~/.local/share/omakub/configs/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
gtk-launch ulauncher.desktop >/dev/null 2>&1
sleep 2 # ensure enough time for ulauncher to set defaults
rm -rf ~/.config/ulauncher/settings.json
ln -s ~/.local/share/omakub/configs/ulauncher.json ~/.config/ulauncher/settings.json
