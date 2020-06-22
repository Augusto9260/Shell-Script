#!/bin/bash

function baixar() {
	while [ 1 -eq 1 ];do
		echo 'Digite [1] MP3 [2] Video'
		read resposta
		if [ $resposta -eq 1 ];then
			echo 'URL'
			read op1
			youtube-dl -x --audio-format mp3 $op1
			code=$?
			if [ $code = 127 ];then
				echo 'Programa não instalado.'
				echo 'Gostaria de instalar [s/n]'
				read resposta
				if [ $resposta = 's' ];then
					sudo pacman -S youtube-dl
				elif [ $resposta = 'n' ];then
					echo 'OK! mas sem o programa (youtube-dl) não tem como fazer download de conteudos'
				fi
			elif [ $code = 1 ];then
				clear
				echo '~~~~~~~~~~~~~~~~~'
				echo '|URL INVALIDA.|'
				echo '~~~~~~~~~~~~~~~~~'
			fi
		elif [ $resposta -eq 2 ];then
			echo 'URL'
			read op2
 			youtube-dl -f mp4 $op2
 			code=$?
			if [ $code = 127 ];then
				echo 'Programa não instalado.'
				echo 'Gostaria de instalar [s/n]'
				read resposta
				if [ $resposta = 's' ];then
					sudo pacman -S youtube-dl
				elif [ $resposta = 'n' ];then
					echo 'OK! mas sem o programa (youtube-dl) não tem como fazer download de conteudos'
				fi
			elif [ $code = 1 ];then
				clear
				echo '~~~~~~~~~~~~~~~~~'
				echo '|URL INVALIDA.|'
				echo '~~~~~~~~~~~~~~~~~'
			
			fi
		else
			clear
			echo '~~~~~~~~~~~~~~~~~'
			echo '|VALOR INVALIDO.|'
			echo '~~~~~~~~~~~~~~~~~'
		fi
	done
}
baixar
