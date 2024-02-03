#!/bin/bash

echo "please enter your username::"

read -s USERNAME #the value entered above will be automatically variable

echo "please enter your Password::"
read -s PASSWORD

echo "USERNAME is:$USERNAME,password is:$PASSWORD" # I am pricting just for validation,you should not print username and password in scripts