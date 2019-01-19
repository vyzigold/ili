#!/bin/bash

pcs resource create WebSite ocf:heartbeat:apache configfile=/etc/apache2/apache2.conf statusurl="http://localhost/server-status" op monitor interval=1min
pcs resource op defaults timeout=240s
pcs constraint colocation add WebSite with ClusterIP INFINITY
pcs constraint order ClusterIP then WebSite

