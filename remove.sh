#!/bin/bash

sudo systemctl disable myDevices
sudo rm -rf /etc/systemd/system/myDevices.service
sudo rm -rf /etc/init.d/myDevices
sudo rm -rf /usr/bin/myDevices
sudo rm -rf /etc/myDevices/

pip3 install psutil paho-mqtt netifaces enum34

echo "Done."
echo
echo "Settings take effect on next boot."
echo
echo -n "REBOOT NOW? [y/N] "
read
if [[ ! "$REPLY" =~ ^(yes|y|Y)$ ]]; then
	echo "Exiting without reboot."
	exit 0
fi
echo "Reboot started..."
reboot
exit 0