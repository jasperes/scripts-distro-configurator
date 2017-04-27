#!/bin/bash

# Linux command line configuration
# Only generic executions will be defined here

function exec_update_passwd {
    passwd
    sudo su
    passwd
}

