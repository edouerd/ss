#!/bin/bash

DATE=$(date +"%Y%m%d%H%M")

# Take a still photo ...
raspistill -q 75 -o /home/pi/camera/ss/ss-$DATE.jpg

# ... and upload it to Github
cp /home/pi/camera/ss/ss-* /home/pi/edouard/projects/ss/img
cd /home/pi/edouard/projects/ss
git add .
git commit -a -m `date +%s`
git push origin
