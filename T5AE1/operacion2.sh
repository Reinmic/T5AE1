#!/bin/bash
read -p "Dime el mes: " month 

month=`cat Usuario.txt | grep $month | wc -l` 

if [ $month -eq 0 ] 

    then 

        echo "El mes de $month no tiene conexiones registradas." 

    else 

        echo "Conexiones de los días del mes $month: " 

        for i in `seq 1 $month` 

        do 

        day=`cat Usuario.txt|grep $month| head -n $i | tail -1| awk '{print $2}'` 

        echo "$day" 

        done 

    fi 
