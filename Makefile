PDFLATEX ?= pdflatex
PDFLATEXFLAGS ?= --shell-escape
CLEAN_LOGS ?= *.aux *.toc *.idx *.ind *.ilg *.log *.out *.lof *.lot *.lol \
  *.blg *.bak *.dvi *.ps
CLEAN_ALL ?= $(CLEAN_LOGS) *.bbl *.pdf


all: cv

cv: Nikita_Korotkih_CV.pdf
	rm -f $(CLEAN_LOGS)

Nikita_Korotkih_CV.pdf: Nikita_Korotkih_CV.tex
	$(PDFLATEX) $(PDFLATEXFLAGS) Nikita_Korotkih_CV

clean:
	rm -f $(CLEAN_ALL)
