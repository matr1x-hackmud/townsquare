#!/bin/bash

# Adjusts icons from TPI and makes them look a bit more like Townsquare icons (crops them and bumps the saturation)

for i in *.png; do ffmpeg -i "$i" -filter_complex "crop=545:535:35:85,eq=saturation=1.4" "${i%.*}_adjusted.png"; done
rename "adjusted" "" *.png