#!/bin/bash

echo "attempting"

echo | sudo rkhunter --update --propupd && sudo rkhunter -sk -c
sudo clamscan -r --bell --remove ~


echo "successful"
