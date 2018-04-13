%.pdf: %.tex
	pdflatex $<

.PHONY: all
all: $(patsubst %.tex,%.pdf,$(wildcard *.tex))

.PHONY: clean
clean: prune
	@rm -f *.pdf

.PHONY: prune
prune:
	@rm -f *.aux *.fdb_latexmk *.fls *.log *.out *.gz

.PHONY: test
test: test-cover-letter.pdf
