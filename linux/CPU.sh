#!/bin/bash


CPU(){

echo " "  
echo "                     CPU INFORMATION"
echo " "

grep -m 1 "processor" /proc/cpuinfo
grep -m 1 "vendor_id" /proc/cpuinfo
grep -m 1 "model" /proc/cpuinfo
grep -m 1 "model name" /proc/cpuinfo
grep -m 1 "stepping" /proc/cpuinfo
grep -m 1 "microcode" /proc/cpuinfo
grep -m 1 "cpu MHz" /proc/cpuinfo
grep -m 1 "cpu family" /proc/cpuinfo
grep -m 1 "cache size" /proc/cpuinfo
grep -m 1 "adrees sizes" /proc/cpuinfo

echo " "
echo "----------------------------------------------------------"
echo " "
echo "                    MEMORY INFORMATION"
echo " "

awk '$3=="kB"{$2=$2/1024;$3="MB"} 1' /proc/meminfo | column -t | head -n12
}

CPU



