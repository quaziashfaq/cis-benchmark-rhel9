#!/usr/bin/env bash 

# 1.4.2 Ensure permissions on bootloader config are configured

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit-ensure-permissions-on-bootloader-config-are-configured()
{
    echo "1.4.2 Ensure permissions on bootloader config are configured: "
    
    filename="/boot/grub2/grub.cfg"
    echo -n "1.4.2 Ensure permissions on bootloader config are configured (${filename}): "
    if [[ -f "${filename}" ]]; then
        return_string=$(sudo stat -Lc "%n %#a %u/%U %g/%G" "${filename}")
        if [[ "$(echo $return_string | awk '$2 ~ /0[4567]00/ && $3 ~ /0\/root/ && $4 ~ /0\/root/ {print "OK"}')" == "OK" ]]; then
            test_passed "Pass"
        else
            test_failed "Fail"
            exit 1
        fi
    else
        test_failed "Fail: "${filename}" is missing"
        exit 1
    fi


    filename="/boot/grub2/grubenv"
    echo -n "1.4.2 Ensure permissions on bootloader config are configured (${filename}): "
    if [[ -f "${filename}" ]]; then
        return_string=$(sudo stat -Lc "%n %#a %u/%U %g/%G" "${filename}")
        if [[ "$(echo $return_string | awk '$2 ~ /0[456]00/ && $3 ~ /0\/root/ && $4 ~ /0\/root/ {print "OK"}')" == "OK" ]]; then
            test_passed "Pass"
        else
            test_failed "Fail"
            exit 1
        fi
    else
        test_failed "Fail: "${filename}" is missing"
        exit 1
    fi


    filename="/boot/grub2/user.cfg"
    echo -n "1.4.2 Ensure permissIOns on bootloader config are configured (${filename}): "
    if [[ -f "${filename}" ]]; then
        return_string=$(sudo stat -Lc "%n %#a %u/%U %g/%G" "${filename}")
        if [[ "$(echo $return_string | awk '$2 ~ /0[456]00/ && $3 ~ /0\/root/ && $4 ~ /0\/root/ {print "OK"}')" == "OK" ]]; then
            test_passed "Pass"
        else
            test_failed "Fail"
            exit 1
        fi
    else
        test_failed "Fail: "${filename}" is missing"
        exit 1
    fi


}

audit-ensure-permissions-on-bootloader-config-are-configured
