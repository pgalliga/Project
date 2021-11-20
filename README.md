This project is a simple menu driven scripted API deployment for FortiGate SD-WAN/SD-Branch. The supported topology is a simple hub/spoke design. A spreadsheet is
used as input for the various variables that will be configured via API. Review the spreadsheet to ensure the data is accurate before deployment. 

Currently this is in prototype phase and supports on the hub (HQ).

These scripts rely on Python 3 and Ansible, as well as ansible_xlsx_inventory module from KeyboardInterrupt on github. Install the latest Python 3 and the Ansible FortiOS modules. Instructions for installing Ansible FortiOS modules can be 
found here: https://galaxy.ansible.com/fortinet/fortios

ansible_xlsx_inventory can be found here: https://github.com/KeyboardInterrupt/ansible_xlsx_inventory

When the hub boots, it will get an IP address via DHCP. Ensure the IP address allocated is the same one in the spreadsheet.

1. SSH to the hub and paste the contents of "base-config-HQ.txt". This will generate an API key which must be copied into the HQ.yml file as well as 
   the "fortios.access.token" column in the spreadsheet.
2. Run menu.sh from the /menu folder
3. Option 1 to enter the location of your spreadsheet. Your spreasheet will be copied to the project folder as host_data.xlsx. The host_data.xlsx file supplied with this repository should be used as the template for your spreadsheet data
4. Option 2 to configure the hub FortiGate
