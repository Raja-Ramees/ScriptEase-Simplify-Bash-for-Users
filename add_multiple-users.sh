#!/bin/bash
# process new user accounts
input="users.names"
while IFS=',' read -r userid name
do
 echo "adding $userid"
sudo useradd -c  "$name" -m $userid
done < "$input"
