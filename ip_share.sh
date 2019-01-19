#!/bin/bash

pcs resource create ClusterIP ocf:heartbeat:IPaddr2 ip=192.168.56.10 cidr_netmask=32 op monitor interval=30s
pcs resource defaults resource-stickiness=100

