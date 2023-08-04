Audit:
Verify that the nosuid option is set for the /tmp mount.
Run the following command to verify that the nosuid mount option is set.
Example:
# findmnt --kernel /tmp | grep nosuid
/tmp tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel
Remediation:
Edit the /etc/fstab file and add nosuid to the fourth field (mounting options) for the 
/tmp partition.
Example:
<device> /tmp <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /tmp with the configured options:
# mount -o remount /tmp
References:
1. See the fstab(5) manual page for more information

1.1.2.4 Ensure nosuid option set on /tmp partition