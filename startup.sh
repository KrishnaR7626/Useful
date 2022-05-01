#!/bin/bash

echo "starting"

sudo modprobe msr
sudo rdmsr 0x1FC
sudo wrmsr 0x1FC 24004d

echo "complete"
