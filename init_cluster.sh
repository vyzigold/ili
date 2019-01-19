#!/bin/bash


apt install pacemaker pcs psmisc policycoreutils-python-utils
firewall-cmd --permanent --add-service=high-availability
firewall-cmd --reload
systemctl start pcsd.service
systemctl enable pcsd.service


systemctl stop corosync.service
rm /etc/corosync/corosync.conf

