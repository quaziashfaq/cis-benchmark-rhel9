

1.1.2.2 Ensure nodev option set on /tmp partition

Remediation:
Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the /tmp
partition.
Example:
<device> /tmp <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /tmp with the configured options:
# mount -o remount /tmp
References:
1. See the fstab(5) manual page for more information