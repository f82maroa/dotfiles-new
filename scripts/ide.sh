#!/bin/bash

tiempo=0.5

tmux new-session -d -t "LaTeX" && sleep $tiempo
tmux rename-window "Editor" && tmux new-window  && tmux select-window -t 1
tmux send-keys "vim *.tex" C-m  && sleep $tiempo
tmux select-window -t 2 && tmux send-keys "echo X | latexmk -pvc -pdf *.tex" C-m  && sleep $tiempo
tmux rename-window "Compile" && tmux select-window -t 1
#tmux split-window -h -p 66 && tmux send-keys n"vim ~/.vim/plugged/vim-snippets/UltiSnips/tex.snippets" C-m && tmux select-pane -t 1 
