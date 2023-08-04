
Audit:
Verify that the noexec option is set for the /tmp mount.
Run the following command to verify that the noexec mount option is set.
Example:
# findmnt --kernel /tmp | grep noexec
/tmp tmpfs tmpfs rw,nosuid,nodev,noexec,relatime,seclabel
