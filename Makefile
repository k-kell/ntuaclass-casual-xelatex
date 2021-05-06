file = $(basename $(wildcard *.tex))
all:
	latexmk -xelatex -synctex=1 ${file}.tex 
	latexmk -c
	rm ${file}.run* ${file}.bbl ${file}.xdv
	rm ./*/*.aux
