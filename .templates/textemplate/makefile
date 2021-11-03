file_inhalt=manuscript

all: 	$(file_inhalt).tex 
	pdflatex $(file_inhalt).tex
	#bibtex $(file_inhalt)
	#pdflatex $(file_inhalt).tex
	#pdflatex $(file_inhalt).tex

mini: 	$(file_inhalt).tex 
	pdflatex $(file_inhalt).tex

bib:
	bibtex $(file_inhalt)

clean:                                                                                                                                                                         
	rm *.ps || true                                                                                                                                                            
	rm *.log || true                                                                                                                                                           
	rm *.dvi || true                                                                                                                                                           
	rm *.aux || true                                                                                                                                                           
	rm *.lof || true                                                                                                                                                           
	rm *.lop || true                                                                                                                                                           
	rm *.lot || true                                                                                                                                                           
	rm *.toc || true                                                                                                                                                           
	rm *.idx || true                                                                                                                                                           
	rm *.ilg || true                                                                                                                                                           
	rm *.ind || true                                                                                                                                                           
	rm *.bbl || true                                                                                                                                                           
	rm *.blg || true                                                                                                                                                           
	rm *.nav || true                                                                                                                                                           
	rm *.out || true                                                                                                                                                           
	rm *.snm || true                                                                                                                                                           
	rm *.bak || true                                                                                                                                                           
	rm *.bcf || true                                                                                                                                                           
	rm *.xml || true                                                                                                                                                           
	rm *-blx.bib || true 
