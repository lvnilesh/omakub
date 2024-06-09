# https://github.com/lvnilesh/mac-arch/blob/master/README.md#fixing-lid-closing-to-suspend

# Thermald is a deamon regulating the CPU speed, when your CPU runs too hot.

# ubuntu preinstalls thermald
# sudo systemctl enable thermald
# sudo systemctl start thermald
# sudo systemctl status thermald

sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt update
sudo apt install -y tlp tlp-rdw

sudo systemctl enable tlp.service
sudo systemctl start tlp.service

sudo tlp-stat

sudo apt install -y ethtool smartmontools
sudo apt install -y linux-tools-common

cat /proc/cpuinfo

# /etc/default/cpupower
# max_freq="2.5GHz"
