#!/bin/bash
# a simple security baseline configuration for linux personal devices using apt
echo "starting"

echo | sudo apt install clamav
sudo freshclam
sudo systemctl start clamav-freshclam.service
sudo systemctl enable clamav-freshclam.service
echo | sudo apt install clamav-daemon
sudo systemctl start clamav-daemon.service
sudo systemctl enable clamav-daemon.service
echo | sudo apt install clamtk
echo | sudo apt install firewalld
sudo systemctl start firewalld
sudo systemctl enable firewalld
echo | sudo apt install rkhunter
clamscan -r --bell --remove /
sudo rkhunter -sk -c

echo "Finished"
