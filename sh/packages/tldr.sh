#!/bin/bash

function tldr() {
    location=/usr/local/bin/tldr  # elevated privileges needed for some locations
    sudo wget -qO $location https://raw.githubusercontent.com/pepa65/tldr-bash-client/master/tldr
    sudo chmod +x $location
}
