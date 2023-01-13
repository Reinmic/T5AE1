#!/bin/bash 

option=0 

while [ $option -ne "5" ] 

do 

    echo "-------------MENU DE OPCIONES------------------" 

    echo "OPERACIÓ 1: BUSQUEDA DE NOMBRE DE CONEXIONES POR NOMBRE" 

    echo "OPERACIÓ 2: BUSQUEDA DE CONNEXIONES POR MES" 

    echo "OPERACIÓ 3: BUSQUEDA DE CONNEXIONES POR FECHA" 

    echo "OPERACIÓ 4: CONSULTA LA ÚLTIMA CONNEXIÓN" 

    echo "OPERACIÓ 5: EXIT" 

    echo "----------------------------------------------" 

    read -p "Selecciona una opción (1..5): " option 

    echo " " 

    case $option in  

    "1") 

    ./operacion1.sh 

    ;; 

    "2") 

    ./operacion2.sh 

    ;; 

    "3") 

    ./operacion3.sh 

    ;; 

    "4") 

    ./operacion4.sh 

    ;; 

    "5") 

    echo "End of the game b*tch." 

    break 

    ;; 

    esac 
    
done 