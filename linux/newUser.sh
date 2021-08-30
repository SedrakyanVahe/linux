#!/bin/bash

RED='\033[0;31m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Do you wont a(add) user or d(delete)?${NC} \n"

read add_delete 

if [[ $add_delete == "a" || $add_delete == "add" ]]
then
    echo -e "Please insert new user name \n"
    read new
    sudo adduser $new 
    echo -e "          ${RED}ALL USERS${NC} \n"
    cd /home && ls
elif [[ $add_delete == "d" || $add_delete == "delete" ]]
then
    echo -e "Which user do you want delete? \n"
    echo -e "          ${RED}ALL USERS${NC} \n"
    cd /home && ls
    read old
    sudo deluser --remove-home $old
    echo -e "          ${RED}ALL USERS${NC} \n"
   
    cd /home && ls
fi


