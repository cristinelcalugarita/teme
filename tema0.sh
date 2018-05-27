#!/bin/bash
trap '' 2
# #####
# Definire variabile script
#
CD=/usr/bin/cd
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
spatiu_de_joaca() {
$CD /tmp
}

fisier_nou() {
echo "introdu numele fisierului ce se doreste a fi creat: "
read nume_fisier
$TOUCH $nume_fisier
}

drepturi_fisier () {
ls -la *
echo "introdu nume fisier"
read fisier
echo "introdu drepturile dorite"
read arg
chmod $arg $fisier
ls -la *
}

sortare_lista () {
echo
}

creaza_bkp() {
echo
}

info_utilizator() {
rez0=$(cat /etc/passwd|grep -i `whoami`|head -1|sed 's/:/ /g'|awk '{print "Utilizator -> "$1" || Director_HOME -> "$6" || Shell -> "$NF}')
echo $rez0
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
echo "Apasa/selecteaza 1 pentru afisare informatii utilizator 1: "
echo "Apasa/selecteaza 2 pentru a crea un fiser 2: "
echo "Apasa/selecteaza 3 pentru a seta drepturi fisier/e 3: "
echo "Apasa/selecteaza 4 pentru xxxxx 4: "
echo "Apasa/selecteaza 5 pentru xxxxx 5: "
echo "Apasa/selecteaza 6 pentru xxxxx 6: "
echo "Apasa/selecteaza q pentru a iesi din program q: "
echo -e "\n"
echo -e "Selecteaza optiunea dorita \c"
}

citeste_optiuni() {
# functia citeste_optiuni preia optiunile alese/selectate si executa operatiunile descrise
read raspuns
case "$raspuns" in
1) info_utilizator ;;
2) fisier_nou ;;
3) drepturi_fisier ;;
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
echo -e "Apasa Enteri/Return pentru a continua \c"
read input
done
