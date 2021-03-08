DOCS = $(HOME)/Library/Mobile Documents

PDF = hidden-words.pdf memorize.pdf rashh-i-ama.pdf seven-valleys.pdf

all: $(PDF)
	cp -pv *.pdf "$(DOCS)/JFJWWP64QD~com~goodiware~GoodReader/Documents/Bahá’í Faith"
	cp -pv *.pdf "$(DOCS)/3L68KQB4HG~com~readdle~CommonDocuments/Documents"

%.pdf: %.tex Makefile
	xelatex $*.tex

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
