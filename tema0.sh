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

fisier_nou() {
echo -e "Introdu numele fisierului ce se doreste a fi creat: \n"
read nume_fisier
$TOUCH $nume_fisier
}

drepturi_fisier () {
ls -l $(pwd)
echo -e "Introdu nume fisier"
read fisier
echo -e "Introdu drepturile dorite pt utilizator"
read arg0
echo -e "Introdu drepturile dorite pt grup"
read arg1
echo -e "Introdu drepturile dorite pt others"
read arg2
chmod u=$arg0,g=$arg1,o=$arg2 $fisier
ls -l $(pwd)
}

creaza_bkp() {
echo -e "Introdu numele fisierului de backup-ului \n"
read nume_bkp
ls -l $(pwd)
echo -e "Introdu numele fisierului sursa \n"
read s_bkp
tar cvf $nume_bkp.tar $s_bkp > /dev/null 2>&1
echo -e "Printare lista backup-uri: \n"
ls -l *.tar
}

info_utilizator() {
rez0=$(cat /etc/passwd|grep -i `whoami`|head -1|sed 's/:/ /g'|awk '{print "Utilizator -> "$1" || Director_HOME -> "$6" || Shell -> "$NF}')
echo $rez0
}

info_pc () {
f_proc=$(cat /proc/cpuinfo |grep "cpu MHz"|awk '{print $4}')
mem=$(free -m|grep Mem|awk '{print $2}')
nr_nuclee=$(cat /proc/cpuinfo |grep process|wc -l)
echo -e "Fregventa procesor: " $f_proc
echo -e "Numar de nuclee: " $nr_nuclee
echo -e "Dimensiune memorie RAM: " $mem
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
echo "Apasa/selecteaza 4 pentru creaza backup 4: "
echo "Apasa/selecteaza 5 pentru a afisa informatii despre PC 5: "
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
4) creaza_bkp ;;
5) info_pc ;;
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
