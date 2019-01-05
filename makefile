README.md: guessinggame.sh
	basename ${PWD} > README.md
	echo "\n" >> README.md
	date >> README.md
	echo "\n" >> README.md
	wc -l guessinggame.sh >> README.md
	echo "\n" >> README.md
