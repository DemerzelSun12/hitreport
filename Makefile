# Makefile for HITReport

PACKAGE = hitreport
REPORT  = hitreport-example

SOURCES = $(PACKAGE).ins $(PACKAGE).dtx
CLSFILE = dtx-style.sty $(PACKAGE).cls

LATEXMK = latexmk
SHELL  := /bin/bash
NPM    ?= npm

# make deletion work on Windows
ifdef SystemRoot
	RM = del /Q
else
	RM = rm -f
endif

.PHONY: all all-dev clean distclean dist report viewreport spine viewspine doc viewdoc cls check save savepdf test FORCE_MAKE

report: $(REPORT).pdf

all: report

all-dev: doc all

cls: $(CLSFILE)

$(CLSFILE): $(SOURCES)
	xetex $(PACKAGE).ins

doc: $(PACKAGE).pdf

$(PACKAGE).pdf: cls FORCE_MAKE
	$(LATEXMK) $(PACKAGE).dtx

$(REPORT).pdf: cls FORCE_MAKE
	$(LATEXMK) $(REPORT)

viewdoc: doc
	$(LATEXMK) -pv $(PACKAGE).dtx

viewreport: report
	$(LATEXMK) -pv $(REPORT)


clean:
	$(LATEXMK) -c $(PACKAGE).dtx $(REPORT)

cleanall: clean
	-@$(RM) $(PACKAGE).pdf $(REPORT).pdf

distclean: cleanall
	-@$(RM) $(CLSFILE)
	-@$(RM) -r dist


dist: check all-dev
	# use l3build for CTAN release (zip with .tds.zip)
	l3build ctan --config build-ctan
	# use gulp for GitHub release (zip with generated file)
	$(NPM) run build -- --version=$(version)
