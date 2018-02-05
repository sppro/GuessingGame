all: README.md

README.md:
	echo "#Guessing Game" >> README.md
	echo "## $$(date '+DATE: %m/%d/%y%n## TIME: %H:%M:%S')" >> README.md
	echo "No. of lines = $$(wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md

clean:
	rm README.md
