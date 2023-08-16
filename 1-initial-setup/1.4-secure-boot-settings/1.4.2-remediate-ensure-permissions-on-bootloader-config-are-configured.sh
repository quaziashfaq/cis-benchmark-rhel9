#!/usr/bin/env bash 

# 1.4.2 Ensure permissions on bootloader config are configured

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

remediate-ensure-permissions-on-bootloader-config-are-configured()
{
    echo "1.4.2 Ensure permissions on bootloader config are configured: "

    # Run the following command to set ownership and permissions on grub.cfg:
    chown root:root /boot/grub2/grub.cfg
    chmod og-rwx /boot/grub2/grub.cfg
    
    # Run the following command to set ownership and permissions on grubenv:
    chown root:root /boot/grub2/grubenv
    chmod u-x,og-rwx /boot/grub2/grubenv

    # Run the following command to set ownership and permissions on user.cfg:
    chown root:root /boot/grub2/user.cfg
    chmod u-x,og-rwx /boot/grub2/user.cfg
    
}

remediate-ensure-permissions-on-bootloader-config-are-configured
