DIST_DIR=https://raw.githubusercontent.com/GalMunGral/telescope/master/release/1.0.0

curl -SLo /usr/local/bin/telescope-remote $DIST_DIR/remote-x86_64-linux-gnu
curl -SLo /etc/systemd/system/telescope.service $DIST_DIR/telescope.service

chmod 744 /usr/local/bin/telescope-remote

systemctl daemon-reload
systemctl restart telescope
systemctl status telescope