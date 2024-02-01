#!/bin/bash

apple_logo=(
  icon=$APPLE
  icon.font="$FONT:Black:16.0"
  icon.color=$WHITE
  padding_left=10
  padding_right=15
  label.drawing=off
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"         \
