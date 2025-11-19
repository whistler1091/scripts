( crontab -l 2>/dev/null | grep -qxF "#NOTINUSE" \
  || printf "%s\n" "$(crontab -l 2>/dev/null)" "#NOTINUSE" ) \
  | sudo crontab -
