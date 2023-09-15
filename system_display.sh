#!/bin/bash

#Create a switch case display output for a system menu

echo "Menu for System Information"

#while loop to continue user input and stop when they select n

while true; do

    echo "System Information Menu:"
    echo "1. Currently logged users"
    echo "2. Your Shell Directory"
    echo "3. Home Directory"
    echo "4. OS Name & Version"
    echo "5. Current Working Directory"
    echo "6. Number of Users Logged in"
    echo "7. Hard Disk Information"
    echo "8. CPU Information"
    echo "9. Memory Information"
    echo "10. File System Information"
    echo "11. Currently Running Process"
    echo "12. Exit"

 echo "Enter a number of the menu item that you would like to select:"

 read number

#If the user chooses option 1, echo 

 case $number in



        1)
                whoami
                echo "1. Currently logged users"
                ;;
        2)
                nano system_info.sh
                echo "2. Your shell directory"
                ;;
        3)
                cd ~
                echo "3. Home Directory" 
                ;;
        4)
                grep -E '^(VERSION|NAME)=' /etc/os-release
                echo "4. OS name & version"
                ;;
        5)
                pwd
                echo "5. Current working directory"
                ;;
        6)
                who -u
                echo "6. Number of users logged in"
                ;;
        7)
                df
                echo "7. Hard disk information"
                ;;
        8)
                -lscpu
                echo "8. CPU information"
                ;;

        9)
                free
                echo "9. Memory information"
                ;;
        10)
                df -T
                echo "10. File system information"
                ;;
        11)
                ps
                echo "11. Currently running process"
                ;;
        12)
                echo "12. Exit"
                ;;

 esac

        read -p "Do you want to continue? y/n " next

        if [ "$next" != "y" ]; then

         break  
        fi

done 
