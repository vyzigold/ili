#!/bin/bash

systemctl start corosync.service
systemctl enable corosync.service
systemctl start pacemaker.service
systemctl enable pacemaker.service

