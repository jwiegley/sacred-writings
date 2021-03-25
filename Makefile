DOCS = $(HOME)/Library/Mobile Documents

PDF = hidden-words.pdf memorize.pdf rashh-i-ama.pdf seven-valleys.pdf

all: $(PDF)
	cp -pv *.pdf "$(DOCS)/3L68KQB4HG~com~readdle~CommonDocuments/Documents/Bahá’í Faith"

%.pdf: %.tex Makefile
	xelatex $*.tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
