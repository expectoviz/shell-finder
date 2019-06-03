#!/bin/bash

echo "
    _____           _____      _    ___        _     
   | ____|_  ___ __|___ /  ___| |_ / _ \__   _| |____
   |  _| \ \/ / '_ \ |_ \ / __| __| | | \ \ / / |_  /
   | |___ >  <| |_) |__) | (__| |_| |_| |\ V /|_|/ / 
   |_____/_/\_\ .__/____/ \___|\__|\___/  \_/ (_)___|
              |_|                                    
             
           Visit : https://cybergd-article.gq
          Bug? report email \e[033;33m expectoviz@gmail.com \n\e[0m
           "   
           
read -p "Masukan target: " target
printf "\n"
  for hasil in `cat root.txt`
  do
    curlvar=$(curl -s -o /dev/null -w "%{http_code}" $target/$hasil)
        if [ "$curlvar" = "201" ] || [ "$curlvar" = "302" ] || [ "$curlvar" = "404" ] || [ "$curlvar" = "301" ]
          then
          printf "Shell ditemukan : \e[01;32m $target/$hasil \n\e[0m"
       break
            else
          printf "\e[01;31m Tidak terdeteksi! \n\e[0m"
          fi
       done
