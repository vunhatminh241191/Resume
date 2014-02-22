DATE=$(shell date)


all: publish

# Build the resume
compile:
	latex resume.tex

# make the PDF file of the resume
makepdf: compile
	dvipdfm resume.dvi

# Create an image file in png format
makeimage: compile makepdf
	convert resume.pdf Erik_Sutherland_Resume.png

# Create a pdf file, and view if with evince pdf viewer
preview: makepdf
	evince resume.pdf

# Publish the resume to gihub
push:
	rm *.pdf
	git add --all
	git commit -e -m "Updated on $(DATE)"
	git push origin master

# Take the resume, build the necessary files and publish to github
publish: makeimage clean push cleanall

# Clean up the directory
clean:
	rm *.dvi
	rm *.log
	rm *.aux

# Clean the directory, including pdf and png
cleanall: clean
	rm *.pdf
	rm *.png
