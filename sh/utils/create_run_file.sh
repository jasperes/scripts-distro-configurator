#!/bin/bash

function create_run() {
    path_from=$1
    to_run=$2
    run_name=$3

    verbose && verbose "Creating run file from ${path_from} to /usr/local/bin/${run_name} running ${to_run}"

    touch "${path_from}/run.sh"

    { echo "#\!/bin/bash";
      echo cd "${path_from}";
      echo "${to_run}";
    } >> "${path_from}/run.sh"

    chmod +x "${path_from}/run.sh"
    sudo link "${path_from}/run.sh" "/usr/local/bin/${run_name}"

    verose && verbose "Run File created!"
}
