bash
#This is a test script that populates the crontab file with the below text. 
sudo crontab -l 2>/dev/null | grep -qxF "#CRON_STANDBY" \
  || ( sudo crontab -l 2>/dev/null; echo "#CRON_STANDBY" ) | sudo crontab -
