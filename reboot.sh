bash
sudo crontab -l 2>/dev/null | grep -qxF "20 14 * * * /sbin/shutdown -r now" \
  || ( sudo crontab -l 2>/dev/null; echo "20 14 * * * /sbin/shutdown -r now" ) | sudo crontab -
