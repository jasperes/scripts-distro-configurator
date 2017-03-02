#!/bin/bash

function exec_update_passwd {
    passwd
    sudo su
    passwd
}

