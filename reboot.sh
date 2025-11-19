bash
sudo crontab -l 2>/dev/null | grep -qxF "#THIS IS JUST A TEST" \
  || ( sudo crontab -l 2>/dev/null; echo "#THIS IS JUST A TEST" ) | sudo crontab -
