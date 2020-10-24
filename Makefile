PDF = hidden-words.pdf

all: $(PDF)

%.pdf: %.tex Makefile
	xelatex $*.tex && xelatex $*.tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
