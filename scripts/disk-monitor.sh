#!/bin/bash

# disk monitor.sh
# purpose: monitor root partition and disk usage and report large home directories

USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
echo "Root partition usage is: $USAGE"
echo ""

if [ $USAGE -gt 90 ]; then
    echo "URGENT ALERT"
elif [ $USAGE -gt 80 ]; then
    echo "WARNING MESSAGE"
fi 
echo ""

echo "Top 5 in /home:"
du -sh /home/* 2>/dev/null | sort -rh | head -5
echo ""

