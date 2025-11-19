bash
sudo crontab -l 2>/dev/null | grep -qxF "15 14 * * * /sbin/shutdown -r now" \
  || ( sudo crontab -l 2>/dev/null; echo "15 14 * * * /sbin/shutdown -r now" ) | sudo crontab -
