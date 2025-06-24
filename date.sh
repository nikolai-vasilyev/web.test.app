#!/bin/bash
sudo timedatectl set-timezone Europe/Moscow
echo "Время сборки: $(date '+%Y-%m-%d %H:%M')" > date_and_v.txt
echo "$(ls -t .git/refs/tags/ | head -1)" >> date_and_v.txt
