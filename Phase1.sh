#!/bin/sh
# Script Phase1.sh
# Allumer une LED via deux boutons poussoirs
# Lorsque l un ou l autre boutons est appuyé la LED  change d'état
# Les boutons sont sur en entré sur les GPIO5 et GPIO6 ( 0 => BP appuyé; 1 => BP relaché)
# La LED est en sortie sur le GPIO16
# Ce script ne comporte pas de test destiné à l'interomptre
# Il s'arrête en appuyant sur CTRL C

# Effacer l'écran
clear
echo "Appuyer sur un des deux boutons pour changer l'état de la LED"

# Rendre le répertoire /sys/class/gpio actif
cd /sys/class/gpio

######## Configuration des port GPIO ########
### GPIO5 pour le premier BP
# Créer l'accès au port GPIO5
# Pour lire l'état du BP
# Ne rien faire s'il existe déja

if [ -d "gpio5" ]; then
	echo "gpio5 existe déjà"
else
	echo "gpio5 : Création"
	echo 5 > export
	sleep 0.1
fi

# Rendre le répertoire GPIO5 actif
cd gpio5/

# Configurer le port GPIO5 en entrée
echo in > direction

# Revenir dans le dossier /sys/class/gpio
cd ..

### GPIO6 pour le deuxième BP
# Créer l'accès au port GPIO6
# Pour lire l'état du BP
# Ne rien faire s'il existe déja

if [ -d "gpio6" ]; then
        echo "gpio6 existe déjà"
else
        echo "gpio6 : Création"
        echo 6 > export
	sleep 0.1
fi

# Rendre le répertoire GPIO6 actif
cd gpio6/

# Configurer le port GPIO6 en entrée
echo in > direction

# Revenir dans le dossier /sys/class/gpio
cd ..

### GPIO16 pour le premier BP
# Créer l'accès au port GPIO16
# Pour commander la LED
# Ne rien faire s'il existe déja

if [ -d "gpio16" ]; then
        echo "gpio16 existe déjà"
else
        echo "gpio16 : Création"
        echo 16 > export
	sleep 0.1
fi

# Rendre le répertoire GPIO16 actif
cd gpio16/

# Configurer le port GPIO16 en sortie
echo out > direction

# Revenir dans le dossier /sys/class/gpio
cd ..

######## Boucle de scrutation des port GPIO 5 et 6 ########

etatBP5="$(cat /sys/class/gpio/gpio5/value)"
etatBP6="$(cat /sys/class/gpio/gpio6/value)"
etatLED="$(cat /sys/class/gpio/gpio16/value)"

if ([ $etatBP5 = 0 ] || [ $etatBP6 = 0 ]); then
        echo 1 > /sys/class/gpio/gpio16/value
else
        echo 0 > /sys/class/gpio/gpio16/value
fi

x="0"

# Boucle while : cette boucle s'exécute tant que la condition est vraie
# ici la condition est toujours vraie :
# la boucle ne s'interromptjamais
# Il faudra en sortir avec un CTRL C
while [ true ]

	# Le bloc inclus entre do et done est exécuté
	# par la boucle

	# Debut du bloc d'instructions
do
	# Mémorisation des états précédents
	m5=$etatBP5
	m6=$etatBP6

	# Lecture de l'état des entrées et de la sortie
	etatBP5="$(cat /sys/class/gpio/gpio5/value)"
	etatBP6="$(cat /sys/class/gpio/gpio6/value)"
	etatLED="$(cat /sys/class/gpio/gpio16/value)"

	# -ne évalue la non égalité
	# On évalue si l'état actuel d'un des deux boutons est différent de son précédent état
	if [ "$etatBP5" -ne "$m5" ] || [ "$etatBP6" -ne "$m6" ]; then
		# Le changement de l'état de la LED se fait lorsque du passage de l'état 1 à O ( Bouton appuyé )
		if [ $etatBP5 = 0 ] || [ $etatBP6 = 0 ]; then
			# On inverse l'état de la LED
			if [ $etatLED = 0  ]; then
				echo 1 > /sys/class/gpio/gpio16/value
			else
				echo 0 > /sys/class/gpio/gpio16/value
			fi
		fi
	fi
	sleep 0.1
done
