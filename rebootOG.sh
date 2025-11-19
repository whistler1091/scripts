bash
sudo crontab -l 2>/dev/null | grep -qxF "37 12 * * * /sbin/shutdown -r now" \
  || ( sudo crontab -l 2>/dev/null; echo "37 12 * * * /sbin/shutdown -r now" ) | sudo crontab -
