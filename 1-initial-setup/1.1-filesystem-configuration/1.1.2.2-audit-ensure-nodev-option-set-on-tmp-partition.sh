1.1.2.2 Ensure nodev option set on /tmp partition
Verify that the nodev option is set for the /tmp mount.
Run the following command to verify that the nodev mount option is set.
Example:
# findmnt --kernel /tmp | grep nodev
/tmp tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel
