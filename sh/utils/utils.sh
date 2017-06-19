#!/bin/bash

function exec_funcs() {
	for script in $1; do
    	$script
    done
}

function exec_bool() {
    if [ $1 == true ]; then
        $2
    fi
}
