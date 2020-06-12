OUTNAME=my-report.pdf
SOURCES=./source/*.md

$(OUTNAME): $(SOURCES) ./templates/apa.csl ./templates/eisvogel.latex ./source/references.bib
	pandoc \
		$(SOURCES) \
		--filter pandoc-citeproc \
		--csl ./templates/apa.csl \
		--template ./templates/eisvogel.latex \
		--bibliography ./source/references.bib \
		--listings \
		-o $(OUTNAME)

