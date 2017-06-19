#!/bin/bash

function spf13_vim() {
    sudo aptitude -y install vim-athena
    sh <(curl https://j.mp/spf13-vim3 -L)
}
