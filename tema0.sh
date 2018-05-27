#!/bin/bash
trap '' 2
# #####
# Definire variabile script
#
CP=/bin/cp
TOUCH=/usr/bin/touch
CHMOD=/bin/chmod
SORT=/usr/bin/sort
FIND=/usr/bin/find
GREP=/usr/bin/grep
MKDIR=/bin/mkdir
FILE=/usr/bin/file
# #####
# Definire functii
#
fisier_nou() {
echo
}

drepturi_fisier () {
echo
}

sortare_lista () {
echo
}

creaza_bkp() {
echo
}

info_utilizator() {
echo
}

info_pc () {
echo
}


arata_meniu() {
# functia arata_meniu afiseaza un meniu operational care prezinta optiunile disponibile
clear
echo "==============================================="
echo "Meniu script"
echo "==============================================="
echo "Apasa/selecteaza 1 pentru xxxxx 1: "
echo "Apasa/selecteaza 2 pentru xxxxx 2: "
echo "Apasa/selecteaza 3 pentru xxxxx 3: "
echo "Apasa/selecteaza 4 pentru xxxxx 4: "
echo "Apasa/selecteaza 5 pentru xxxxx 5: "
echo "Apasa/selecteaza 6 pentru xxxxx 6: "
echo "Apasa/selecteaza q pentru a iesi din program q: "
echo "\n"
echo "Selecteaza optiunea dorita \c"
}

citeste_optiuni() {
# functia citeste_optiuni preia optiunile alese/selectate si executa operatiunile descrise
read raspuns
case "$raspuns" in
1) whoami ;;
2) xxxx ;;
3) xxxx ;;
4) xxxx ;;
5) xxxx ;;
6) xxxx ;;
q) break ;;
*) echo "optiune invalida" ;;
esac
}


while true
do
arata_meniu
citeste_optiuni
echo "Apasa Enteri/Return pentru a continua \c"
read input
done
