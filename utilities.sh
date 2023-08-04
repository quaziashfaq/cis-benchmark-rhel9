#!/usr/bin/env bash

function print_color() {
    case $1 in
        "green") COLOR="\033[0;32m" ;;
        "red")   COLOR="\033[0;31m" ;;
        "*")     COLOR="\033[0m" ;;
    esac

    NC="\033[0m"
    echo -e "${COLOR}$2 ${NC}"
}


function test_passed() {
    print_color "green" "${@}"
}

function test_failed() {
    print_color "red" "${@}"
}


# Test
# test_passed "Pass"
# test_failed "Fail"
