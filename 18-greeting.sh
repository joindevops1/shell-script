#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USGAE:: $(basename $0) -n <name> -w <wishes>"
    echo "options::"
    echo " -n, specify the name (mandatory)"
    echo " -w, specify the wishes.ex, Good morning"
    echo " -h, Display help and exit"
}

while getopt ":n:w:h" opt; do
    case $opt in
         n)NAME="$OPTARG";;
         w)WISHES="$OPTARG";;
         h|*)USER; exit;;
    esac
done    