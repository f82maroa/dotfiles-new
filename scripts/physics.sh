#!/bin/bash
dir=~/Escritorio/universidad/4_physics
cd $dir
Config=$(echo -e "Asignaturas\nEditar master.tex\nCompilar master.tex\nPreview master.pdf"| dmenu -p "4º Física" -l 20 -i)
case "$Config" in
	"Asignaturas") file=$(ls $dir/tex/ | dmenu -p "Asignaturas" -l 20 -i) 
alacritty --command vim $dir/tex/$file;;
	"Editar master.tex") alacritty --command vim $dir/master.tex;;
	"Compilar master.tex") alacritty --command echo X | latexmk -pvc -pdf $dir/master.tex;;
	"Preview master.pdf") zathura $dir/master.pdf;;
		*) echo Nada;;
	esac


