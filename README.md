# Makefile to generate README.md

README=README.md
SCRIPT=guessinggame.sh
TITLE="Guessing Game Project"
DATETIME=$(shell date '+%Y-%m-%d %H:%M:%S')
LINES=$(shell wc -l < $(SCRIPT))

all: $(README)

$(README):
	echo "# $(TITLE)" > $(README)
	echo "" >> $(README)
	echo "Generated on: $(DATETIME)" >> $(README)
	echo "" >> $(README)
	echo "Number of lines in $(SCRIPT): $(LINES)" >> $(README)
