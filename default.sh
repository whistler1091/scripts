bash
# initially this script should be private and retain the "-STANDBY" before being activated by being public and removing "-STANDBY".
sudo crontab -l 2>/dev/null | grep -qxF "#CRON_STANDBY" \
  || ( sudo crontab -l 2>/dev/null; echo "#CRON_STANDBY" ) | sudo crontab -
