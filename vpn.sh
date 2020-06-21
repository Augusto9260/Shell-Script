#!/bin/bash

function connect(){
	sudo protonvpn c
}

function reconnect(){
	sudo protonvpn r
}

function disconnect(){
	sudo protonvpn d
}

function status(){
	sudo protonvpn s
}

function Exit() {
	exit
}

while [ 1 -eq 1 ];do
	echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    echo '| [1] Connect                           |'
    echo '| [2] Reconnect                         |'
    echo '| [3] Disconnect                        |'
	echo '| [4] Status                            |'
	echo '| [5] Exit                              |'
    echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    echo 'Option...'
    
    read option
    if [ $option -eq 1 ];then
    	connect

    elif [ $option -eq 2 ];then
    	reconnect

	elif [ $option -eq 3 ];then
		disconnect

	elif [ $option -eq 4 ];then
		status

	elif [ $option -eq 5 ];then
		Exit

	else
		echo ' OPÇÃO INVALIDA '
	fi
done













