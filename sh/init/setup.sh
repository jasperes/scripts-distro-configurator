#!/bin/bash

# Configure args and anything more is needeed.

function setup() {
    log_info && log_info "Updating distro..." && log_info
	distro_update
    log_info && log_info "Distro updated!" && log_info

    # TODO valid and create paths
}
