#!/bin/bash

function _log() {
    echo "$1" | tee -a "$PATH_LOG/$LOG_FILE"
}

function log_info() {

    if [ ! -f "$PATH_LOG/$LOG_FILE" ]; then
        touch "$PATH_LOG/$LOG_FILE"
        _log "Log file CREATED: $(date)"
    fi

    _log "$1"

}

function verbose() {
    if [[ "$VERBOSE" == "true" ]]; then
	   log_info "$1"
    fi
}
