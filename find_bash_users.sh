#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "Error: $1 is not a file"
  exit 1
fi

grep '/bin/bash' "$1" | cut -d: -f1