#!/bin/sh

directory=$1
filename=$2

rm ~/.config/lockscreen*

convert $directory/$filename -resize 1920x1080 ~/.config/lockscreen.png




