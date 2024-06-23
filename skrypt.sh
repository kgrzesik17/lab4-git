#!/bin/bash

while [[ $# -gt 0 ]]; do
    case "$1" in
        -d|--date)
            date=$(date +'%Y-%m-%d')
            echo "Obecna data to: $date" 
            ;;
        -l|--logs)
            date=$(date +'%Y-%m-%d')
            start=1
            if [[ -n "$2" ]]; then
                count=$2
            else
                count=100
            fi
            echo "Generowanie $count logow."
            for ((i=start; i<=count; i++))
            do
                touch log$i.txt
                printf "Nazwa: log$i.txt\nSkrypt: skrypt.sh\nData: $date" > log$i.txt
            done
            ;;
        -i|--init)
            git clone https://github.com/kgrzesik17/lab4-git
            MYPATH=$(pwd)
            export MYPATH
            export PATH=$PATH:MYPATH
            ;;
        -h|--help)
            echo 'Narzedzia pracy w branzy IT - laboratorium 4'
            echo 'Opcje:'
            echo '-d --date: Wyswietla obecna date'
            echo '-l --logs [liczba]: Generuje (liczba) logow. Gdy liczba nie jest podana, domyslna wartoscia jest 100.'
            echo '-i --init: Klonuje projekt do folderu oraz ustawia jego ściężkę w zmiennej środowiskowej PATH.'
            echo '-h --help: Wyswietla pomoc dotyczaca programu - otwiera to okno :)'
            echo 'Autor: Kacper Grzesik'
            ;;
    esac
    shift
done
