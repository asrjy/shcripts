alias stylus="xsetwacom --list devices | awk 'NR==1 {print \$9}'"
alias pencil="xsetwacom --list devices | awk 'NR==2 {print \$9}'"
xsetwacom --set `pencil` MapToOutput HEAD-1
xsetwacom --set `stylus` MapToOutput HEAD-1
