#!/bin/bash

function jdk() {

	if [[ $ARCH == 'x86' ]]; then
		JDK_ARCH='i586'
	elif [[ $ARCH == 'x86_64' ]]; then
		JDK_ARCH='x64'
	fi;

	for version in $JDK_VERSIONS; do
		sudo tar -xzvf $PATH_PACKAGES/jdk-${version}-linux-$JDK_ARCH.tar.gz -C $JAVA_PATH
	done;
	
}
