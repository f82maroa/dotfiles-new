#!/bin/bash

cat ~/scripts/cheatsheets.conf \
	| dmenu -p "Cheat Sheet" -l 30 -fn "Mononoki Nerd Font:size=10" | sed 's/.*    \+//' | zsh 
