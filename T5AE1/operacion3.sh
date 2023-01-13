#!/bin/bash

read -p "Dime el mes: " month
read -p "Ahora dime el dia: " day 
user=" "
date=$day.$month

logs=`cat Usuario.txt | grep $month | grep $day |wc -l` 

if [ $logs -eq 0 ] 
then 
    echo "En la fecha indicada no hay conexiones registradas." 
else 
    echo "En los dias del mes $month hay las siguientes conexiones: " 
    for i in `seq 1 $logs` 
    do 
        user=`cat Usuario.txt|grep $date| head -n$i | tail -1| awk '{print $1}'` 
        users=$users""$user", " 
       
    done 
    echo "$users"
fi 