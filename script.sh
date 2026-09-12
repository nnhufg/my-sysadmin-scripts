INTERVAL=3

while true; do
  echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> monitor.log
  echo "" >> monitor.log

  free -h | tr '\n' ' ' >> monitor.log
  echo "" >> monitor.log

  df -h | tr '\n' ' ' >> monitor.log
  echo "" >> monitor.log

  uptime | tr '\n' ' ' >> monitor.log
  echo "" >> monitor.log

  sleep $INTERVAL
done
