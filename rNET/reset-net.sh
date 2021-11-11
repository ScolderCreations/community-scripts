#!/bin/bash
sudo modprobe -r iwlmvm
sudo modprobe -r iwlwifi
sudo modprobe iwlwifi
echo Wi-Fi Reset Complete
