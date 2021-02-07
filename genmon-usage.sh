#!/bin/sh

(free -m | awk 'NR==2{printf "RAM: %.1f GB (%.1f%%)  \n", $3/1000,$3*100/$2 }'; grep 'cpu ' /proc/stat | awk '{printf "CPU: %.1f %\n", ($2+$4)*100/($2+$4+$5) }') | tr '\n' ' '
