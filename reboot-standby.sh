bash
# initially this script should be private and retain the "-STANDBY" before being activated by being public and removing "-STANDBY".
sudo crontab -l 2>/dev/null | grep -qxF "* 15 * * * /sbin/shutdown -r now" \
  || ( sudo crontab -l 2>/dev/null; echo "* 15 * * * /sbin/shutdown -r now" ) | sudo crontab -
