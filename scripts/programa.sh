# !/bin/bash

# Author: Álvaro Martín Romero


#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


trap ctrl_c INT

function ctrl_c(){
    echo "Saliendo"
}

# Main Function
testfunction(){
ls ~/Escritorio/university/3_physics/segundo_cuatrimestre | rofi -dmenu 
cd ~/Escritorio/university/3_physics/segundo_cuatrimestre/
pwd
}
testfunction

