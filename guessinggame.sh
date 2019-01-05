#!/usr/bin/env bash
#File: guessinggame.sh

function guess_correctly {
	local n_files=`ls -l|grep "^-"| wc -l`
	if [[ $1 -gt $n_files ]]
	then 
		echo "Greater"
	elif [[ $1 -lt $n_files ]]
	then 
		echo "Less"
	else
		echo "Congratuations!"
		return 1 
	fi	
	echo "Please try again"
	return 0
}

echo "How many files are in the current directory?"
read n_guess
echo "You have guessed: $n_guess"

while guess_correctly $n_guess
do
	read n_guess
done
