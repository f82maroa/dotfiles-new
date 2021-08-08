#!/bin/bash
FILE=`find ~/Documentos/Libreria -type f -iname "*.pdf" -o \
	    -iname "*.epub" -o -iname "*.mobi" | dmenu -l 30`

if [[ "$FILE" == *.pdf ]]
then
	    READER=`echo -e "zathura\natril" | dmenu -i -p "Which reader?"`
	        $READER "$FILE"
	else
		    xdg-open "$FILE"
fi
