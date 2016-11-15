PDF =	oneness-of-mankind.pdf \
	memorization.pdf \
	holy-day-2016-11-01.pdf

all: $(PDF)

%.bcf: %.tex bahai.bib Makefile quotes.tex
	xelatex $<

%.bbl: %.bcf
	biber $*

%.pdf: %.bbl
	xelatex $*.tex && xelatex $*.tex

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
