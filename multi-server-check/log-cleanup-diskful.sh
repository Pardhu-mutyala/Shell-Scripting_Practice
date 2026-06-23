#!/bin/bash

server="ip"
Threshold=90

usage=$(ssh user@server "df / | awk 'NR=2 {print \$5}' | sed 's/%//'")

echo "Disk usage on $server: $usage%"

if [ "$usage -gt "Threshold" ]; then
    echo "Warning: Disk usage on $server is above @Threshold%!"
else
    echo "Disk usage on $server is within the acceptable limits."
fi