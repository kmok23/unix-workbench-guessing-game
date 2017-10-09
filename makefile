all: README.md

README.md:guessinggame.sh
	echo "The title of the project is: Unix Workbench Guessing Game." > README.md
	echo "The make was run on:" >> README.md
	date >> README.md
	echo "The number of lines of code in the file guessinggame.sh is:" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
