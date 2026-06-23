#!/bin/bash

server="ip"

echo "Check large log files on server: $server"

ssh user@$server "find / -type f -size +200M -exec 2>/dev/null"

echo "checking is done"


#In production large app log file and root file are not going to delete it's not a good practice'

#if you want to delete some particular directoy you can use below one.

ssh user@$server "find /home/devops/ -type f -size +200M -delete -print"

echo "large log files deleted if they are existed."