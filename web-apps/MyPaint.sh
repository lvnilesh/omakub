cat <<EOF > ~/.local/share/applications/MyPaint.desktop
[Desktop Entry]
Version=1.0
Name=MyPaint
Comment=Paint app for your tablet
Exec=/usr/bin/mypaint
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/web-apps/icons/MyPaint.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
