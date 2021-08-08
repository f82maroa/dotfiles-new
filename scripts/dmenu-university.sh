
#!/usr/bin/bash
cd ~/Escritorio/universidad/4_physics/ 
tipo=$(echo  "electro\ncuantica\nf.estadistica\nmmc\nmaster\nprueba" | dmenu -i -p "Asignaturas" -nb black -fn "Iosevka Nerd Font-10" -sb "#ff5500")

case "$tipo" in
	"electro") alacritty --command vim ~/Escritorio/universidad/4_physics/tex/electromagnetismoI.tex & echo X | latexmk -pvc -pdf ~/Escritorio/universidad/4_physics/master.tex;;
	"cuantica") alacritty --command vim ~/Escritorio/universidad/4_physics/tex/cuanticaI.tex;;
	"f.estadistica") alacritty --command vim ~/Escritorio/universidad/4_physics/tex/estadistica.tex;;
	"mmc") alacritty --command tmux new-session -d -t "LaTeX" && sleep $tiempo
tmux rename-window "Editor" && tmux new-window  && tmux select-window -t 1
tmux send-keys "vim --remote-silent tex/mmc.tex" C-m  && sleep $tiempo
tmux select-window -t 2 && tmux send-keys "echo X | latexmk -pvc -pdf master.tex" C-m  && sleep $tiempo
tmux rename-window "Compile" && tmux select-window -t 1;;

	"master") alacritty --command tmux new-session -d -t "LaTeX" && sleep $tiempo
tmux rename-window "Editor" && tmux new-window  && tmux select-window -t 1
tmux send-keys "vim --remote-silent master.tex" C-m  && sleep $tiempo
tmux select-window -t 2 && tmux send-keys "echo X | latexmk -pvc -pdf master.tex" C-m  && sleep $tiempo
tmux rename-window "Compile" && tmux select-window -t 1;;
	*) echo "Nada";;
esac

