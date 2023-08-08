1.1.5.2 Ensure nodev option set on /var/log partition
Audit:
Verify that the nodev option is set for the /var/log mount.
Run the following command to verify that the nodev mount option is set.
Example:
# findmnt --kernel /var/log | grep nodev
/var/log /dev/sdb ext4 rw,nosuid,nodev,noexec,relatime,seclabel
Remediation:
Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the 
/var/log partition.
Example:
<device> /var/log <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 
0
Run the following command to remount /var/log with the configured options:
# mount -o remount /var/log
References:
