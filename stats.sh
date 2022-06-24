#!/bin/bash

#Get Cards
count what model and how many

#get Tflops

#get Memory on cards

#get per gpu ram

# get per-gpu bandwidth

#get nvlink speed

#get pcie lanes per GPU

#per GPU pcie bandwith

#virtual cores

#Total Ram

#upload speed

#download speed

#disk type

#disk speed
sudo apt-get install -y hdparm
diskspeed=$(sudo hdparm -t /dev/nvme0n1 | grep -o -P '.{0,8}MB/sec')






#grep -o -P '.{0,3}string.{0,4} # grab left 3 and right 4 



echo "HDD speed is "$diskspeed

