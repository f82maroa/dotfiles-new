!/bin/bash

echo X | latexmk -pvc -pdf *.tex || rubber --clean *.tex || rm *.fls
