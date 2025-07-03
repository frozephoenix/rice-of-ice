#! /usr/bin/env bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2"%"}')

MEM=$(free -h | awk '/Mem:/ {print $3 "/" $2}')

DISK=$(df -h / | awk 'NR==2{print $3 "/" $2}')

echo "{\"cpu\": \"$CPU\", \"mem\": \"$MEM\", \"disk\": \"$DISK\"}"
