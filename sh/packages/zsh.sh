#!/bin/bash

function oh_my_zsh() {
    # TODO configurar shell padrão zsh
    suro aptitude -y install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}
