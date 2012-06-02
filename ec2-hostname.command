#!/bin/bash
cp /usr/local/ec2/ec2-hostanme.sh

chmod o+x /usr/local/ec2/ec2-hostanme.sh

echo "Edit /etc/rc.local and add this line in before 'exit 0' /usr/local/ec2/ec2-hostanme.sh"