#!/usr/bin/env bash 

# 1.4.1 Ensure bootloader password is set

source "$(realpath "$(dirname "${BASH_SOURCE[0]}")")"/../../utilities.sh

audit-ensure-bootloader-password-is-set()
{
    echo -n "1.4.1 Ensure bootloader password is set: "
    test_output="/tmp/$$_${RANDOM}".output.txt
    sudo awk -F. '/^\s*GRUB2_PASSWORD/ {print $1"."$2"."$3}' /boot/grub2/user.cfg 1> "$test_output" 2>/dev/null
    rc1=$(echo $?)
    #echo $rc1

    if [[ "$rc1" -eq 0 ]]; then
        sudo grep "GRUB2_PASSWORD=grub.pbkdf2.sha512" "$test_output" > /dev/null 2>&1
        rc2=$(echo $?)
        if [[ "$rc2" -eq 0 ]]; then
            test_passed "Pass"
        else
            test_failed "Pass with different values. Please check it manually"
        fi
        #sudo rm $test_output
        exit 0
    else
        test_failed "Fail"
        #sudo rm $test_output
        exit 1
    fi


}

audit-ensure-bootloader-password-is-set
 
