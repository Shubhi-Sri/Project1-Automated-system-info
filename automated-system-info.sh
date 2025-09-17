#!/bin/bash
#automated system information
#
echo " System Info Report"
echo "Hostname: $(hostname)"
echo "Today is $(date)"
if command -v lsb_release&> /dev/null; then
        echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')"
else
        echo "Operating System: $(uname -o)"
fi
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
#
echo "----------------------------------------------------------"
echo "CPU Info"
echo "CPU Cores: $(nproc)"
echo "CPU Usage: $(top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}')%"
#
echo "----------------------------------------------------------"
echo "Memory Info"
echo "C Drive: $(df -h /mnt/c | awk 'NR==2 {print $3 " used / " $2 " total ("$5" used)"}')"
echo "D Drive: $(df -h /mnt/d | awk 'NR==2 {print $3 " used / " $2 " total ("$5" used)"}')"
#
echo "----------------------------------------------------------"
echo "Disk Usage $(df -h)"


