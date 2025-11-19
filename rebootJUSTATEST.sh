( crontab -l 2>/dev/null | grep -qxF "#THISISJUSTATEST" \
  || printf "%s\n" "$(crontab -l 2>/dev/null)" "#THISISJUSTATEST" ) \
  | sudo crontab -
