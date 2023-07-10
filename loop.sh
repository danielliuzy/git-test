#!/bin/bash

secs=10
endTime=$(( $(date +%s) + secs ))

while [ $(date +%s) -lt $endTime ];
do
  git commit --allow-empty -m 'empty commit'
done