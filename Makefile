latexfile = healy-article
bibfile = bibs
figures = figures/*


.PHONY: FORCE
${latexfile}.pdf: #FORCE ${bibfile}.bib
	xelatex -shell-escape ${latexfile} 

.PHONY: clean
clean:
	rm ${latexfile}.bcf
	rm ${latexfile}.out
	rm ${latexfile}.pdf
	rm ${latexfile}.log
	rm ${latexfile}.run.xml
	rm ${latexfile}.aux

