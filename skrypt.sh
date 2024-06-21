#!/bin/bash

while [[ $# -gt 0 ]]; do
    case "$1" in
        --date)
            date=$(date +'%Y-%m-%d')
            echo "Obecna data to: $date" 
            ;;
        --logs)
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
    esac
    shift
done
