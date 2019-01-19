#!/bin/bash

apt install firewalld
systemctl enable firewalld

apt-get install selinux-basics selinux-policy-default auditd
selinux-activate

mv interfaces /etc/network/interfaces

mv resolv.conf /etc/resolv.conf

mv hosts /etc/hosts

apt install openssh-server

reboot
