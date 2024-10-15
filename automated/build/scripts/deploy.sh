#!/bin/bash

rbf_file=$1
ip_address=$AGIB027_IP_ADDR

# Copy the rbf_file to the remote system
scp "$rbf_file" "root@$ip_address:/root/rbf/"

# Execute deploy.sh on the remote system
ssh "root@$ip_address" 'sh /root/deploy.sh'

# copy generated logs
scp "root@$ip_address:/root/l1c.log" .