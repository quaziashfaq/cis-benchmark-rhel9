#!/usr/bin/env bash 

# 1.4.1 Ensure bootloader password is set

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

remediate-ensure-bootloader-password-is-set()
{
    sudo grub2-setpassword
}

remediate-ensure-bootloader-password-is-set
