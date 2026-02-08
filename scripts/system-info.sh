#!/bin/bash

# system-info.sh
# Displays system information and resource usage

echo "=== System Information & Monitoring ==="
echo ""

# Hostname and OS info
echo "1. System Details:"
echo "   Hostname: $(hostname)"
echo "   OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)"
echo "   Kernel: $(uname -r)"
echo ""

# CPU information
echo "2. CPU Information:"
echo "   Processor: $(lscpu | grep 'Model name' | cut -d':' -f2 | xargs)"
echo "   CPU Cores: $(nproc)"
echo "   Architecture: $(uname -m)"
echo ""

# Memory usage
echo "3. Memory Usage:"
free -h | awk 'NR==1{print "   " $0} NR==2{print "   " $0}'
echo ""

# Disk usage
echo "4. Disk Usage:"
df -h / | awk 'NR==1{print "   " $0} NR==2{print "   " $0}'
echo ""

# Current processes (top 5 by memory)
echo "5. Top 5 Processes by Memory Usage:"
ps aux --sort=-%mem | head -6 | awk 'NR==1{print "   " $0} NR>1{print "   " $0}'
echo ""

# System uptime
echo "6. System Uptime:"
echo "   $(uptime -p)"
echo "   Load average: $(uptime | awk -F'load average:' '{print $2}')"
echo ""

# Network interfaces
echo "7. Network Interfaces:"
ip addr show | grep -E '^[0-9]+:' | awk '{print "   " $2}' | tr -d ':'
echo ""

# Currently logged in users
echo "8. Logged in Users:"
who | awk '{print "   " $1 " (logged in at " $4 ")"}'
echo ""

echo "=== Monitoring Complete ==="
echo ""
echo "Tip: Run 'top' or 'htop' for real-time process monitoring"
echo "     Run 'df -h' to see all disk partitions"
echo "     Run 'free -m' to see memory in MB"