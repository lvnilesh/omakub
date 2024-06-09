# AppImage needs fuse
sudo apt install -y libfuse2

# install mypaint from github because apt version crashes when I paint
cd ~/.local && mkdir -p bin && cd bin
wget -O /home/cloudgenius/.local/bin/MyPaint-v2.0.1.AppImage https://github.com/mypaint/mypaint/releases/download/v2.0.1/MyPaint-v2.0.1.AppImage
chmod +x MyPaint-v2.0.1.AppImage
sudo rm -rf /usr/bin/mypaint
sudo ln -s /home/cloudgenius/.local/bin/MyPaint-v2.0.1.AppImage /usr/bin/mypaint
