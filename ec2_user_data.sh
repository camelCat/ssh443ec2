#!/bin/bash -x
sudo perl -pi -e 's/^#?Port 22$/Port 443/' /etc/ssh/sshd_config
sudo service sshd restart
service ssd restart