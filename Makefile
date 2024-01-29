# Makefile for cv.tex using xelatex and natbib

# Set the main file name (without extension)
MAIN = cv

# Set the BibTeX file name
BIBFILE = publications

# Set the latex engine
LATEX = xelatex

# Flags for the latex engine
LATEX_FLAGS = -shell-escape

# Targets
all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(BIBFILE).bib
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	bibtex $(MAIN)
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf

.PHONY: all clean

