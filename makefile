DATE = $(date)
LINE_COUNT = $(wc -l guessinggame.sh)

all: README.md

README.md:guessinggame.sh
	echo "The title of the project is: Guessing Game." > README.md
	echo "The make was run on ${DATE}." >> README.md
	echo "The file guessinggame.sh contains $(wc -l guessinggame.sh) lines of code." >> README.md

clean:
	rm README.md
