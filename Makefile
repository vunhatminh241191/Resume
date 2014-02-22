all: resume

publish: resume clean jpeg
	rm *.pdf

jpeg:
	convert resume.pdf Erik_Sutherland_Resume.png

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
