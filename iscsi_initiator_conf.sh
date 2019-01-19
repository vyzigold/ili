#!/bin/bash

apt install open-iscsi
echo iqn.2005-03.org.open-iscsi.clientname:`hostname` >> initiatorname.iscsi
cp initiatorname.iscsi /etc/iscsi/initiatorname.iscsi

systemctl start iscsi
systemctl start iscsid

systemctl enable iscsi
systemctl enable iscsid

systemctl restart iscsi
systemctl restart iscsid
