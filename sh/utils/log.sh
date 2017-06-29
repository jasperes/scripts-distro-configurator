#!/bin/bash

function _log() {
    msg=$1
    echo "$msg" | tee -a "$PATH_LOG/$LOG_FILE"
}

function log_info() {
    msg=$1

    if [ ! -d "$PATH_LOG" ]; then
        mkdir -p "$PATH_LOG"
    fi

    if [ ! -f "$PATH_LOG/$LOG_FILE" ]; then
        touch "$PATH_LOG/$LOG_FILE"
        _log "Log file CREATED: $(date)"
    fi

    _log "$msg"

}

function verbose() {
    msg=$1

    if [[ "$VERBOSE" == "true" ]]; then
	   log_info "$msg"
    fi
}
