This project is a simple menu driven scripted API deployment for FortiGate SD-WAN/SD-Branch. The supported topology is a simple hub/spoke design. A spreadsheet is
used as input for the various variables that will be configured via API. Review the spreadsheet to ensure the data is accurate before deployment. 

Currently this is in prototype phase and supports only the hub (HQ). This revision of the prototype menu does prompt you to enter the host name of the device you wish to configure, however it still only supports the hub at this stage.

These scripts rely on Python 3 and Ansible, as well as ansible_xlsx_inventory module from KeyboardInterrupt on github. Install the latest Python 3 and the Ansible FortiOS modules. Instructions for installing Ansible FortiOS modules can be 
found here: https://galaxy.ansible.com/fortinet/fortios

ansible_xlsx_inventory can be found here: https://github.com/KeyboardInterrupt/ansible_xlsx_inventory

When the hub boots, it will get an IP address via DHCP on port1. This is the default configuration for a FortiGate VM running FortiOS 6.4.x and it is assumed that this interface is used as the management interface. Ensure the IP address allocated is the same one in the spreadsheet (ie. configure a reservation in the DHCP server providing this address).

1. SSH to the hub. You will be prompted to configure a password. After configuring the password, paste the contents of "base-config-HQ.txt". This will generate an API key which must be copied into the "fortios.access.token" column in the spreadsheet.
2. Run menu.sh from the /menu folder
3. Select option 1 to enter the location of your spreadsheet. Your spreasheet will be copied to the project folder as host_data.xlsx. The host_data.xlsx file supplied with this repository should be used as the template for your spreadsheet data
4. Select option 2 to enter the name of, and configure the hub FortiGate
5. To reset the VM back to factory default configuration for further testing, SSH or console to the VM, login and enter "execute factory-reset keepvmlicense" at the CLI prompt.
