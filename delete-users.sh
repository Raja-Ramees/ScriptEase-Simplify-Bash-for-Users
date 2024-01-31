#!/bin/bash
# process user accounts for deletion
input="users.names"
while IFS=',' read -r userid name
do
  echo "deleting $userid"
  sudo userdel -r $userid
done < "$input"

