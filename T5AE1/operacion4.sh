#!/bin/bash 

read -p "Dime el nombre de usuario: " name 

numlog=`cat Usuario.txt | grep $name | wc -l` 

max=0
monthmax="" 
daymax=0 

for j in `seq 1 $numlog`  

do  

    month=`cat Usuario.txt | grep $name | head -n$j | tail -1| awk '{print $3}'` 

    for i in enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre 

            do 

                cont=$((cont + 1)) 

                if [ $i = $month ] 

                then 

                    if [ $max -lt $cont ] 

                    then  

                    max=$cont 

                    monthmax=$i 

                    fi 

                fi 

            done    

            cont=0  

done 

for K in `seq 1 $numlog`  

do 

    day=`cat Usuario.txt | grep $name |grep $monthmax | head -n$K | tail -1| awk '{print $2}'`     

    if [ $daymax > $day ] 

    then  

    daymax=$day 

    fi 

done 

echo "$name $daymax $monthmax" 