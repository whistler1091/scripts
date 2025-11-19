bash
sudo crontab -l 2>/dev/null | grep -qxF "#THISISJUSTATEST" \
  || ( sudo crontab -l 2>/dev/null; echo "#THISISJUSTATEST" ) | sudo crontab -
