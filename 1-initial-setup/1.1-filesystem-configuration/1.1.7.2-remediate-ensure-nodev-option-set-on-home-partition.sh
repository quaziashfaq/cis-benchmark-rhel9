1.1.7.2 Ensure nodev option set on /home partition

Remediation:
Edit the /etc/fstab file and add nodev to the fourth field (mounting options) for the 
/home partition.
Example:
<device> /home <fstype> defaults,rw,nosuid,nodev,noexec,relatime 0 0
Run the following command to remount /home with the configured options:
# mount -o remount /home
References:
1. See the fstab(5) manual page for more information

