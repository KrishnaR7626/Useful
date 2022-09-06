#!/bin/bash
# a simple security baseline configuration for linux personal devices using apt
echo "starting"

sudo apt install -y clamav clamav-daemon clamtk firewalld rkhunter ufw

sudo freshclam
sudo systemctl start clamav-freshclam.service
sudo systemctl enable clamav-freshclam.service
sudo systemctl start clamav-daemon.service
sudo systemctl enable clamav-daemon.service
sudo ufw default deny incoming  
sudo ufw default allow outgoing
sudo ufw limit 22/tcp  
sudo ufw allow 80/tcp  
sudo ufw allow 443/tcp  
sudo ufw enable

sudo rkhunter -sk -c
clamscan -r --bell --remove /

echo "Finished"
