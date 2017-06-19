#!/bin/bash

funcion create_run() {
    touch $1/run.sh
    
    echo "#\!/bin/bash" >> $1/run.sh
    echo cd $1 >> $1/run.sh
    echo $2 >> $1/run.sh

    chmod +x $1/run.sh
    sudo link $1/run.sh /usr/local/bin/$3
}
