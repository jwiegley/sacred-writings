PDF = hidden-words.pdf

all: $(PDF)

%.bcf: %.tex bahai.bib Makefile quotes.tex
	xelatex $<

%.bbl: %.bcf
	biber $*

%.pdf: %.bbl
	xelatex $*.tex && xelatex $*.tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
