#!/bin/bash

echo "
    _____           _____      _    ___        _     
   | ____|_  ___ __|___ /  ___| |_ / _ \__   _| |____
   |  _| \ \/ / '_ \ |_ \ / __| __| | | \ \ / / |_  /
   | |___ >  <| |_) |__) | (__| |_| |_| |\ V /|_|/ / 
   |_____/_/\_\ .__/____/ \___|\__|\___/  \_/ (_)___|
              |_|                                    
             
           Visit : https://cybergd-article.gq
          Bug? report email expectoviz@gmail.com
           "   
wget https://gist.githubusercontent.com/expectoviz/f6721ace6ae01825c5e6b47c7ca57fa3/raw/001e3364ab19614980e0b8138b8a2927719b6f90/root.txt 2>/dev/null; rm -rf root.txt.1 2>/dev/null
read -p "Masukan target: " target
printf "\n"
  for i in `cat root.txt`
  do
    curlvar=$(curl -s -o /dev/null -w "%{http_code}" $target/$i)
        if [ "$curlvar" = "201" ] || [ "$curlvar" = "302" ] || [ "$curlvar" = "301" ]
          then
          printf "[] Shell ditemukan : \e[01;32m $target/$i \n\e[0m"
       break
            else
          printf "\e[01;31m[] $target => Tidak terdeteksi! \n\e[0m"
          fi
       done
