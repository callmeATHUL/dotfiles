#!/bin/bash
FILE="${EWW_CONFIG_DIR:-$HOME/.config/eww}/tasks.txt"
mkdir -p "$(dirname "$FILE")"
touch "$FILE"

case "${1:-get}" in
  add)
    echo "$2" >> "$FILE"
    ;;
  clear)
    : > "$FILE"
    ;;
  get|*)
    cat "$FILE" | jq -R -s -c 'split("\n") | map(select(length > 0))'
    ;;
esac
