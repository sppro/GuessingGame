#!/user/bin/env bash
# File: guessinggame.sh

repeat=0
numFiles=$(find . -maxdepth 1 -type f | wc -l)

function guessinggame_answer {
        echo $numFiles
}

while [[ $repeat -eq 0 ]]
do

	echo "guess how many files there are in this directory ..."
	read response

	if [[ $response =~ [0-9] ]]
	then
		if [[ $response -eq $numFiles ]]
		then
			echo "Congratulations !! ... you guessed correctly ... !!"
			let repeat=1
		elif [[ $response -lt $numFiles && $response -ge 0 ]]
		then
			echo "nice try, but your guess is too low ..."

		elif [[ $response -gt $numFiles ]]
		then
			echo "not quite ... your guess is too high ..."
		elif [[ $response -lt 0 ]]
		then
			echo "you're joking, right ... ?? ..."
		fi
	else
		echo "I'm sorry, but I need a number ..."
	fi

done

