#!/bin/bash
nombre_usuario=`cat usuario.txt | wc -l`

echo "Ingresa el nombre de usuario:"
read nombre_usuario


login_count=`cat usuario.txt | grep "^$nombre_usuario " | wc -l`


if [ $login_count -eq 0 ]; then
  echo "No se ha logueado"
else
  echo "$nombre_usuario ha conectado $login_count veces"
fi
