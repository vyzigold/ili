#!/bin/bash

apt install apache2 wget

firewall-cmd --permanent --add-service=http
firewall-cmd --reload
