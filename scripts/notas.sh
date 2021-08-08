#!/usr/bin/bash

tipo=$(echo -e "estudio\nvim" | dmenu -i -l 10 -p "Notas" -sb "#ff5500" -fn "Iosevka-Nerd-Font-10")

case "$tipo" in
	"estudio") alacritty --command vim ~/notas/Estudio;;
	"vim") alacritty --command vim ~/notas/vim;;
	*) echo "Nada";;
esac


