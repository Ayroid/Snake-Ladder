#!/bin/bash

snakein=(18 26 39 51 56 75 83 90 92 97)
snakeout=(1 10 5 6 19 28 45 48 25 66)
ladderin=(3 7 11 15 17 38 49 57 73 81)
ladderout=(20 13 28 34 74 59 67 76 96 98)

player1=1
player2=1

play=0

while [ $player1 != 100 -a $player2 != 100 ] 
do
	play=$((play+1))
	echo "Player$play:"
	play=$((play%2))

	read

	number=0
	while [ $number -lt 1 ]
	do
        	number=$(($RANDOM%7))
	done

	echo "You rolled $number"
	echo

	if [ $play -eq 1 ]; then 
		player1=$((player1 + number))

		if [ $player1 -gt 100 ]; then
          	      player1=$((player1-$number))
        	fi

	else
		player2=$((player2 + number))

		if [ $player2 -gt 100 ]; then
          	      player2=$((player2-$number))
       		fi
	fi

	echo "Score: P1 - $player1  P2 - $player2"
done

echo "Game Over!"
