all: resume

resume: dvi
	dvipdfm resume.dvi

dvi:
	latex resume.tex

preview: resume clean
	evince resume.pdf

clean:
	rm *.dvi
	rm *.log
	rm *.aux

cleanall: clean
	rm *.pdf
