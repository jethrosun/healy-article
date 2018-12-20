latexfile = article
bibfile = paper
figures = figures/*


.PHONY: FORCE
${latexfile}.pdf: FORCE ${bibfile}.bib
	xelatex -shell-escape ${latexfile}
	biber  ${latexfile}
	xelatex -shell-escape ${latexfile}
	rm ${latexfile}.bcf
	rm ${latexfile}.bbl
	rm ${latexfile}.blg
	rm ${latexfile}.out
	rm ${latexfile}.log
	rm ${latexfile}.run.xml
	rm ${latexfile}.aux



.PHONY: clean
clean:
	rm ${latexfile}.pdf
