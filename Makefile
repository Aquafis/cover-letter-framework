%.pdf: %.tex
	pdflatex $<

.PHONY: all
all: $(patsubst %.tex,%.pdf,$(wildcard *.tex))

.PHONY: spell-check
spell-check:
	find . -name \*.tex -exec aspell --dont-backup --mode=tex -c {} \;

.PHONY: clean
clean: prune
	@rm -f *.pdf

.PHONY: prune
prune:
	@rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.gz

.PHONY: example
example: example-cover-letter.pdf
