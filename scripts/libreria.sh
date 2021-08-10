#/bin/bash
font="Meslo LG L Nerd Font:size=9"
sb=#8ec07c
file=`find ~/Documentos/Libreria/ -iname "*.pdf"  | cut -d '/' -f 6,7 |dmenu -i -l 20 -p "LIBRERIA" -nb "#1d2021" -fn  "$font" -sb "$sb" `
reader=$(echo "evince\nzathura\natril" | dmenu -p "¿Qué visor de PDF?" -sb "#d3869b" -nb "#1d2021" -fn "$font")
$reader /home/alvaromr/Documentos/Libreria/"$file"

