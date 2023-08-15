#!/usr/bin/env bash

# cp -v aidecheck.service /etc/systemd/system/aidecheck.service
# cp -v aidecheck.timer   /etc/systemd/system/aidecheck.timer


# chown root:root /etc/systemd/system/aidecheck.* 
# chmod 0644 /etc/systemd/system/aidecheck.* 
# systemctl daemon-reload 
# systemctl enable aidecheck.service 
# systemctl --now enable aidecheck.timer

# systemctl start aidecheck.service
# systemctl start aidecheck.timer

echo "0 5 * * * /usr/sbin/aide --check" >> /var/spool/cron/root
