#! /bin/bash
#####################################################################################################
#
# Xogo que xenera un número e dálle varias oportunidades ó usuario para que o acerte
#
###################################################################################################


# Xenerar un número aleatorio de 2 díxitos
misterio=$(($RANDOM%99))

#para facer probas:
#misterio=33
#echo $misterio 

# oportunidades para xogar
for i in 1 2 3
do
	# pregunto o número ó usuario
	echo Que número pode ser?
	read varUsuario

	# en caso de que acerte
	if [ $varUsuario -eq $misterio ] 
		then 
			echo Moi ben !!!!!!
			break
	fi

	# cando sexa maior o misterioso
	if [ $misterio -gt $varUsuario ] 
		then echo Non, o número  misterioso é maior
	fi

	# cando sexa menor o misterioso
	if [ $misterio -lt $varUsuario ] 
		then echo Non, o número  misterioso é menor
	fi

done

echo Era o $misterio
