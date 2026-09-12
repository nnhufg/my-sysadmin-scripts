#!/bin/bash

INTERVAL=3

while true; do
  echo "" >> monitor.log
  echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> monitor.log
  echo "" >> monitor.log

  if ! free -h | tr '\n' ' ' >> monitor.log; then
    echo "ERROR: не удалось получить информацию о памяти" >> monitor.log
  fi
  echo "" >> monitor.log

  if ! df -h | tr '\n' ' ' >> monitor.log; then
    echo "ERROR: не удалось получить информацию о диске" >> monitor.log
  fi
  echo "" >> monitor.log

  if ! uptime | tr '\n' ' ' >> monitor.log; then
    echo "ERROR: не удалось получить информацию о системе" >> monitor.log
  fi

  sleep $INTERVAL
done
