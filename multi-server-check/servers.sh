#!/bin/bash

servers=("server-pub1" "server-pub2" "server-pub3" "server-pub4")

for server in "${servers[@]}"
do 
    echo "checking server: $server"
    ssh username@$server "df -h | grep /mnt/apps/"
done 

# this above things is work when we enable the ssh to all the machines.
# If any server is not working the above script is still in waitomg for server condition, like if the server never came to live or ssh enablement it struck there and it does't go to other server to check

#to remove that scenario we can add some time for check or run this command

#i just add the for loop for comparision for before to new script

for server in "${servers[@]}"
do 
    echo "checking server: $server"
    ssh -o ConnectTimeout=3 username@$server "df -h | grep /mnt/apps/"
done 
