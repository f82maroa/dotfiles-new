#!/usr/bin/bash

r=$(echo -e "Relatividad\nElectromagnetismo\nMecánica Medios Continuos\nFísica Cuántica\nFísica Estadística" | dmenu -i -p "Asignatura" -sb orange -nb black -fn "Iosevka Nerd Font-10")

case "$r" in
	"Relatividad") alacritty --command vim ~/Escritorio/university/3_physics/segundo_cuatrimestre/tex/relatividad.tex;;
	"Electromagnetismo") alacritty --command vim ~/Escritorio/university/3_physics/segundo_cuatrimestre/tex/electromagnetismo.tex;;
	*) echo "Nada";;
esac
