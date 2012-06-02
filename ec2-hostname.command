#!/bin/bash
mkdir -p /usr/local/ec2/

cp ec2-hostname.sh /usr/local/ec2/

chmod o+x /usr/local/ec2/ec2-hostname.sh
echo "***"
echo "Edit /etc/rc.local and add this line in before 'exit 0' /usr/local/ec2/ec2-hostname.sh"
echo "***"
