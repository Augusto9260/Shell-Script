#!/bin/bash

while [ 1 -eq 1 ];do
	echo '|-------------------------|'
	echo '|[1] Atualizar sistema.   |'
	echo '|[2] Instalar programa.   |'
	echo '|[3] Desistalar programa. |'
	echo '|[4] Pesquisar programa.  |'
	echo '|[5] Sair                 |'
	echo '|-------------------------|'

	read op
	case $op in
		1) cowsay -f tux 'Atualizar.';sudo pacman -Syyu;pamac update;;
		2) cowsay -f tux 'Nome do programa.';read p1;sudo pacman -S $p1;;
		3) cowsay -f eyes 'Nome do programa.';read p2;sudo pacman -Rs $p2;;
		4) cowsay -f tux 'Nome do programa.';read p3;sudo pacman -Ss $p3;;
		5) break;;
	esac
done
echo $op
