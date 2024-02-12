#!/bin/bash

NAME=""
WISHES="Good Morning"

USAGE(){
    echo "USGAE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. (Optional). Default is Good Morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
        :) USAGE; exit;;
        h) USAGE; exit;;
    esac
done

if [ -z "$NAME" ] || [ -z "$WISHES" ];than
    echo "ERROR: Both -n and -w are mandatory option."
    USAGE
    exit 1
if

echo "Hello $NAME. $WISHES. i have been learning shell-script."