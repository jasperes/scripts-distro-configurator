#!/bin/bash

function exec_funcs() {
    funcs=$1

	for script in $funcs; do
    	$script
    done
}

function exec_bool() {
    condition=$1

    if [ $condition == true ]; then
        $2
    fi
}

function download_package() {
    link_=$1

    verbose && verbose "Downloading ${link_}"
    cd "${PATH_PACKAGES}" && { curl -O "${link_}"; cd -; }
}

function is_to_download() {
    to_download=$1

	# Test to not download
	if [[ $DOWNLOAD == false ||
			# Or is on exclude or everithing to exclude
			( $DISTRO_REPO_PACKAGES_EXCLUDE == *$to_download* || $DISTRO_REPO_PACKAGES_EXCLUDE == *ALL* &&
				# And package not include and not all to include
				( $DISTRO_REPO_PACKAGES_INCLUDE != *$to_download* && $DISTRO_REPO_PACKAGES_INCLUDE != *ALL*
				)
			)
		]]
	then
		return 1
	fi;
}

function dir_exists() {
    path=$1

    if [ -d "${path}" ]; then
        return 0
    fi

    return 1
}
