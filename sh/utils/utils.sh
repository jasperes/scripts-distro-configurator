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

function download_package() {
    cd $PATH_PACKAGES && { curl -O "${1}"; cd -; }
}

function is_to_download() {
	# Test to not download
	if [[ $DOWNLOAD == false ||
			# Or is on exclude or everithing to exclude
			( $DISTRO_REPO_PACKAGES_EXCLUDE == *$1* || $DISTRO_REPO_PACKAGES_EXCLUDE == *ALL* &&
				# And package not include and not all to include
				( $DISTRO_REPO_PACKAGES_INCLUDE != *$1* && $DISTRO_REPO_PACKAGES_INCLUDE != *ALL*
				)
			)
		]]
	then
		return -1
	fi;
}
