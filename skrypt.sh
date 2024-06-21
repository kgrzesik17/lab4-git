#!/bin/bash

while [[ $# -gt 0 ]]; do
    case "$1" in
        --date)
            date=$(date +'%Y-%m-%d')
            echo "Obecna data to: $date" 
            ;;
        --logs)
            date=$(date +'%Y-%m-%d')
            for i in {1..100}
            do
                touch log$i.txt
                printf "Nazwa: log$i.txt\nSkrypt: skrypt.sh\nData: $date\n" > log$i.txt
            done
            ;;
        *)
            echo "unknown option: $1"
            exit 1
            ;;
    esac
    shift
done
