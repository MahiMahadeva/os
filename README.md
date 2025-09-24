# Makefile to generate README.md without using macro parameters

all: README.md

README.md:
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "Generated on: $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
