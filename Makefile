result.pdf: chap-0.pdf $(MAIN_CHAPTERS)
	pdfunite chap-0.pdf $(MAIN_CHAPTERS) result.pdf 

MAIN_CHAPTERS = chap-1.pdf \
		chap-2.pdf \
		chap-3.pdf \
		chap-4.pdf \
		chap-5.pdf \
		chap-6.pdf \
		chap-7.pdf \
		chap-8.pdf \
		chap-9.pdf \
		chap-10.pdf \
		chap-11.pdf \
		chap-12.pdf \
		chap-13.pdf \
		chap-14.pdf \
		chap-15.pdf \
		chap-16.pdf \
		chap-17.pdf \
		chap-18.pdf \
		chap-19.pdf \
		chap-20.pdf \
		chap-21.pdf \
		chap-22.pdf \
		chap-23.pdf \
		chap-24.pdf \
		chap-25.pdf \
		chap-26.pdf \
		chap-a.pdf

$(MAIN_CHAPTERS): %.pdf: %.tex
	pdftex $<

chap-0.pdf: $(MAIN_CHAPTERS) chap-0.tex
	pdftex chap-0.tex

clean:
	rm *sec *toc *ref *pdf *log *iss *fig chap*.idx
