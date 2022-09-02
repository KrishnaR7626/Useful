#!/bin/bash
# a simple security baseline configuration for linux personal devices using apt
echo "starting"

sudo apt install -y clamav clamav-daemon clamtk firewalld rkhunter

sudo freshclam

sudo systemctl start clamav-freshclam.service
sudo systemctl enable clamav-freshclam.service
sudo systemctl start clamav-daemon.service
sudo systemctl enable clamav-daemon.service
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo rkhunter -sk -c
clamscan -r --bell --remove /

echo "Finished"
