#!/bin/bash
sudo timedatectl set-timezone Europe/Moscow
echo "Время начала ковейера: $(date '+%Y-%m-%d %H:%M')" > ./date_and_v.txt
echo "$(ls -t ./.git/refs/tags/ | head -1 | awk -F. -v OFS=. 'NF==1{print ++$NF}; NF>1{if(length($NF+1)>length($NF))$(NF-1)++; $NF=sprintf("%0*d", length($NF), ($NF+1)%(10^length($NF))); print}')" >> ./date_and_v.txt
