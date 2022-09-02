#!/bin/bash

echo "starting"

sudo apt install -y msr-tools
sudo modprobe msr
sudo rdmsr 0x1FC
sudo wrmsr 0x1FC 24004d

echo "complete"
