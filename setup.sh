#!/bin/bash
machines=(ubuntu1 ubuntu2 ubuntu3 centos1 centos2 centos3)
for host in "${machines[@]}"; do
        sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ansible@"$host"
        echo "added $host"
done
