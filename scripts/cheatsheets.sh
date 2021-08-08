#!/bin/bash


cat ~/scripts/cheatsheets.conf \
	| dmenu -p "Cheat Sheet" -l 30 | sed 's/.*    \+//' | zsh 
