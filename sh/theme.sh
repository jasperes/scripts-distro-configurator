#!/bin/bash

function theme_install {

    ## Install GTK2, GTK3, Openbox themes
    cp -r $RESOURCES/themes/* ~/.local/share/themes

    ## Install fonts
    cp -r $RESOURCES/fonts/* ~/.local/share/fonts
    fc-cache -f -v

    ## Tint2 theme
    cp $RESOURCES/tint2/* ~/.config/tint2

    ## Conky
    cp $RESOURCES/conky/* ~/.config/conky
    
}

function theme_blob {
    mkdir ~/.config/blob
    cp -r $RESOURCES/blob/* ~/.config/blob/
    bl-obthemes
}
