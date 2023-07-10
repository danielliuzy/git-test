#!/bin/bash

secs=60
endTime=$(( $(date +%s) + secs ))

while [ $(date +%s) -lt $endTime ];
do
  git commit --allow-empty -m 'empty commit'
done