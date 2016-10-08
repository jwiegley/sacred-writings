all: oneness-of-mankind.pdf

oneness-of-mankind.bcf: oneness-of-mankind.tex bahai.bib
	xelatex oneness-of-mankind.tex

oneness-of-mankind.bbl: oneness-of-mankind.bcf
	biber oneness-of-mankind

oneness-of-mankind.pdf: oneness-of-mankind.bbl
	xelatex oneness-of-mankind.tex
	xelatex oneness-of-mankind.tex

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.run.xml *.pdf
