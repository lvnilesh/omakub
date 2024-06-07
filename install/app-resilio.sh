echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
wget -qO- https://linux-packages.resilio.com/resilio-sync/key.asc | sudo tee /etc/apt/trusted.gpg.d/resilio-sync.asc > /dev/null 2>&1
sudo apt-get update
sudo apt-get install -y resilio-sync
sudo service resilio-sync stop
sudo systemctl disable resilio-sync
# cat /usr/lib/systemd/user/resilio-sync.service
sudo sed -i s/WantedBy=multi-user.target/WantedBy=default.target/g  /usr/lib/systemd/user/resilio-sync.service
systemctl --user enable resilio-sync
systemctl --user start resilio-sync
mkdir -p /home/cloudgenius/btsync

# systemctl --user status resilio-sync
# journalctl --user -fu resilio-sync
