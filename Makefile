PDF = memorize.pdf hidden-words.pdf
DIR = "/Users/johnw/Library/Mobile Documents/JFJWWP64QD~com~goodiware~GoodReader/Documents/Bahá’í Faith"

all: $(PDF)

%.bcf: %.tex bahai.bib Makefile quotes.tex
	xelatex $<

%.bbl: %.bcf
	biber $*

%.pdf: %.tex bahai.bib Makefile
	xelatex $*.tex && xelatex $*.tex
	mv $*.pdf $(DIR)
	open $(DIR)/$*.pdf

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
