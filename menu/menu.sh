#!/bin/bash
#cd /home/pgalligan/scripts/portfolio/week2 #Set current directory
until [ 1 != 1 ]; do    #Show the menu and ask for selection
    clear
    echo
    echo "1. Enter Spreadsheet File Location"
    echo "2. Enter Host to Configure"
    echo "3. Blah"
    echo "4. Exit Menu"
    read -p "Select an option:" menuchoice
    case $menuchoice in
        1)
            echo 
            read -p "Enter full path:" hostdata
            cp "$hostdata" /home/pgalligan/Project/host_data.xlsx
            ls -l /home/pgalligan/Project/host_data.xlsx
            read -p "Press any key";;
        2)
            echo
            # need to work out how to use env variable as host in yml file
            cd /home/pgalligan/Project
            ansible-playbook -i xlsx_inventory.py hub.yml
            read -p "Press any key";;
        3)
            echo
            ;;
        4)
            echo -e "Goodbye"
            exit;;
    esac
done
fi
echo
echo "GoodBye"
exit 0