#/bin/bash
font="Meslo LG L Nerd Font:size=10"
sb=#00b859
Tipo=$(echo -e "#---------------------  LIBROS  ---------------------\nCuantica\nOtro\nEntrenamiento\n " |dmenu -i -l 20 -p LIBRERÍA -sb "$sb" -fn "$font")
echo "$Tipo"
file=`find ~/Documentos/Libreria/$Tipo -iname "*.pdf" |dmenu -l 20 -p "LIBRERIA/$Tipo" -fn "$font" -sb "$sb" `
reader=$(echo -e "evince\nzathura\natril" | dmenu -p "¿Qué visor de PDF?" -sb "#aa00ff" -fn "$font")
$reader "$file"

