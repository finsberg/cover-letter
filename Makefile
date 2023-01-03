

all:
	@echo Running Pandoc...
	pandoc \
		--pdf-engine=xelatex \
		--template=cltemplate.tex \
		-s ./coverletter.md \
		-f markdown \
		-t latex \
		-o ./coverletter.pdf
	@echo Done

clean:
	rm -f __latexindent_temp.tex
	rm -f *.aux
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.log