# sudo add-apt-repository -y ppa:keyd-team/ppa
# sudo apt update
# sudo apt install -y keyd keyd-application-mapper

sudo rm -rf /tmp/keyd
git clone https://github.com/rvaiya/keyd /tmp/keyd
cd /tmp/keyd
make && sudo make install

sudo usermod -aG keyd cloudgenius

mkdir -p ~/.config/keyd/

# DEFAULT
sudo rm -rf /etc/keyd/default.conf
sudo ln -s ~/.local/share/omakub/configs/keyd/default-mbp.conf /etc/keyd/default.conf

# Application specific
rm -rf ~/.config/keyd/app.conf
ln -s ~/.local/share/omakub/configs/keyd/app.conf ~/.config/keyd/app.conf


rm -rf ~/.local/share/gnome-shell/extensions/keyd # Remove any older versions of the extension
mkdir -p ~/.local/share/gnome-shell/extensions
# Gnome 42-44:
# ln -s /usr/local/share/keyd/gnome-extension ~/.local/share/gnome-shell/extensions/keyd

# Gnome 45/46:
rm -rf ~/.local/share/gnome-shell/extensions/keyd
ln -s /usr/local/share/keyd/gnome-extension-45 ~/.local/share/gnome-shell/extensions/keyd

sudo systemctl enable --now keyd
sudo systemctl restart keyd
sudo keyd reload

# use xev command to listen for keystrokes

# Finally restart Gnome and run:

# gnome-extensions enable keyd
# gnome-extensions show keyd # (verify the extension is enabled)
