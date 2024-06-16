cat <<EOF > ~/.local/share/applications/CloudGenius.desktop
[Desktop Entry]
Version=1.0
Name=Cloud Genius
Comment=Be a Cloud Genius
Exec=google-chrome --app="https://cloudgenius.app" --name=CloudGenius
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/web-apps/icons/CloudGenius.png
Categories=GTK;
MimeType=text/html;text/xml;application/xhtml_xml;
StartupNotify=true
EOF
