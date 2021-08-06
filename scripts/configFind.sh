y="$( find ~/.config| dmenu -p -i -l 10 -nb black -sb orange -p "Configuracion")"
    alacritty --command vim "$y"
