#!/bin/bash  

DATE=$(date +"%Y-%m-%d")  

sudo mkdir -p /home/pi/usbcam/$DATE  

sudo rmmod uvcvideo  

sudo modprobe uvcvideo  

sudo fswebcam -r 2048x1536 --no-banner /home/pi/usbcam/$DATE/USBcam_"$date%H-%M-%S".jpg  -l 30  
