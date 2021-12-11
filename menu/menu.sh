#!/bin/bash
#cd /home/pgalligan/scripts/portfolio/week2 #Set current directory
until [ 1 != 1 ]; do    #Show the menu and ask for selection
    clear
    echo
    echo "1. Enter Spreadsheet File Location"
    echo "2. Enter Host to Configure"
    echo "3. Exit Menu"
    read -p "Select an option:" menuchoice
    case $menuchoice in
        1)
            echo 
            read -p "Enter full path:" hostdata
            cp "$hostdata" /home/pgalligan/Project/host_data.xlsx
            cd ..
            ./xlsx-config-global.sh
            cd menu
            ls -l /home/pgalligan/Project/host_data.xlsx
            read -p "Press Enter key";;
        2)
            echo
            # need to work out how to use env variable as host in yml file
            cd /home/pgalligan/Project
            read -p "Enter host to configure: " host
            echo "You entered: " $host
            read -p "Press Enter to continue"
            ansible-playbook -i xlsx_inventory.py -e host="$host" hub.yml
            read -p "Press Enter key";;
        3)
            echo -e "Goodbye"
            exit;;
    esac
done
fi
echo
echo "GoodBye"
exit 0