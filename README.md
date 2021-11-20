This project is a simple menu driven scripted API deployment for FortiGate SD-WAN/SD-Branch. The supported topology is a simple hub/spoke design. A spreadsheet is
used as input for the various variables that will be configured via API. Review the spreadsheet to ensure the data is accurate before deployment.

Currently this is in prototype phase and supports on the hub (HQ).

When the hub boots, it will get an IP address via DHCP. Ensure the IP address allocated is the same one in the spreadsheet.

1. SSH to the hub and paste the contents of "base-config-HQ.txt". This will generate an API key which must be copied into the HQ.yml file as well as 
   the "fortios.access.token" column in the spreadsheet.
2. Run menu.sh from the /menu folder
3. Option 1 to enter the location of your spreadsheet
4. Option 2 to configure the hub FortiGate
