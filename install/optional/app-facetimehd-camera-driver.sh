#!/bin/bash

sudo apt install -y xz-utils curl cpio make
sudo apt install -y linux-headers-generic git kmod libssl-dev checkinstall

rm -rf ~/i3config
git clone git@github.com:lvnilesh/i3config.git ~/i3config
rm -rf ~/bcwc_pcie
git clone https://github.com/patjak/bcwc_pcie.git ~/bcwc_pcie
rm -rf ~/facetimehd-firmware
git clone https://github.com/patjak/facetimehd-firmware ~/facetimehd-firmware

cd ~/facetimehd-firmware
printf "Compiling firmware\n";
make
printf "done\n\n";

printf "Installing firmware\n";
sudo make install
printf "done\n\n";


cd ~/bcwc_pcie/
printf "Compiling driver\n";
make
printf "done\n\n";

printf "Installing driver\n";
sudo make install
printf "done\n\n";

printf "adding webcam sensors"
sudo cp ~/i3config/webcam/*.dat /usr/lib/firmware/facetimehd/
printf "done\n\n";

printf "Running depmod\n";
sudo depmod
printf "done\n\n";

printf "modprobe remove bdc_pci (if it exists)\n";
sudo modprobe --remove --quiet bdc_pci
printf "done\n\n";

printf "Loading driver\n";
sudo modprobe facetimehd
printf "done\n\n";
