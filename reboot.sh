bash
sudo crontab -l 2>/dev/null | grep -qxF "* 14 * * * /sbin/shutdown -r now" \
  || ( sudo crontab -l 2>/dev/null; echo "* 14 * * * /sbin/shutdown -r now" ) | sudo crontab -
