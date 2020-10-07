PDF = hidden-words.pdf
DIR = "/Users/johnw/Library/Mobile Documents/JFJWWP64QD~com~goodiware~GoodReader/Documents/Bahá’í Faith"

all: $(PDF)
	mv $< $(DIR)
	open $(DIR)/$<

%.bcf: %.tex bahai.bib Makefile quotes.tex
	xelatex $<

%.bbl: %.bcf
	biber $*

%.pdf: # %.bbl
	xelatex $*.tex && xelatex $*.tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
