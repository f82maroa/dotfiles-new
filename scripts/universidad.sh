#!/bin/bash

time=0.5

tmux new-session -d -t "University" && sleep $time
tmux send-keys "cd ~/Escritorio/university/3_physics/segundo_cuatrimestre/" C-m 


