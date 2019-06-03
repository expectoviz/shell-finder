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

read -p "Masukan target: " target
printf "\n"
  for i in `cat root.txt`
  do
    curlvar=$(curl -s -o root.txt -w "%{http_code}" $target/$i)
        if [ "$curlvar" = "201" ] || [ "$curlvar" = "302" ] || [ "$curlvar" = "301" ]
          then
          printf "Shell ditemukan : \e[01;32m $target/$i \n\e[0m"
       break
            else
          printf "\e[01;31mTidak terdeteksi! \n\e[0m"
          fi
       done
