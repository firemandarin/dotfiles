#!/bin/bash
# Returns the number of upgradable packages
updates=$(apt list --upgradable 2>/dev/null | grep -v "Listing" | wc -l)

if [ "$updates" -eq 0 ]; then
    echo "0"
else
    echo "$updates"
fi
