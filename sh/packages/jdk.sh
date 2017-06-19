#!/bin/bash

function jdk() {
    sudo tar -xzvf java/jdk-$JDK7_VERSION-linux-i586.tar.gz -C $JAVA_PATH
    sudo tar -xzvf java/jdk-$JDK8_VERSION-linux-i586.tar.gz -C $JAVA_PATH
}
