README.md: guessinggame.sh
	basename ${PWD} > README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md
