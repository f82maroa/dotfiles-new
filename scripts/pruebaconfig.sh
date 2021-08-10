#!/usr/bin/bash
r=$(echo -e "zsh\nvim\nalacritty\npolybar\nneofetch\nbspwm\nsxhkd\nbookmarks" | dmenu -i -p "Configuración" -nb black -fn "Iosevka Nerd Font-10")

case "$r" in
	"zsh") alacritty --command vim ~/.zshrc;;
	"vim") alacritty --command vim .vimrc;;
	"alacritty") alacritty --command vim ~/.config/alacritty/alacritty.yml ;;
	"polybar") alacritty --command vim ~/.config/polybar/current.ini ;;
	"neofetch") alacritty --command vim ~/.config/neofetch/config.conf ;;
	"bspwm") alacritty --command vim ~/.config/bspwm/bspwmrc ;;
	"sxhkd") alacritty --command vim ~/.config/sxhkd/sxhkdrc ;;
	"bookmarks") alacritty --command vim ~/.config/bookmarks ;;
	*) echo "Nada";;
esac

