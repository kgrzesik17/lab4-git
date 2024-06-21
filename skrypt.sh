#!/bin/bash

while [[ $# -gt 0 ]]; do
    case "$1" in
        --date)
            date=$(date +'%Y-%m-%d')
            echo "Obecna data to: $date" 
            ;;
        *)
            echo "unknown option: $1"
            exit 1
            ;;
    esac
    shift
done

#