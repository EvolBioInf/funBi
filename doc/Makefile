TEXT = funBi
SRC1 = $(TEXT).tex intro.tex ref.bib
SRC2 = unix.tex latex.tex genome.tex alignment.tex r.dat genes.dat

date = $(shell git log | grep Date | head -n 1 | sed -r 's/Date: +[A-Z][a-z]+ ([A-Z][a-z]+) ([0-9]+) [^ ]+ ([0-9]+) .+/\2_\1_\3/')
version = $(shell git describe)

all: $(TEXT).pdf
$(TEXT).pdf: $(TEXT).tex $(SRC1) $(SRC2) genes.dat
	echo $(date) | tr '_' ' ' > date.txt
	echo $(version) | tr '-' ' ' | awk '{printf "%s", $$1; if ($$2) printf "-%s", $$2; printf "\n"}' > version.txt
	latex $(TEXT).tex
	bibtex $(TEXT)
	latex $(TEXT).tex
	latex $(TEXT).tex
	dvips $(TEXT) -o -q
	ps2pdf -dALLOWPSTRANSPARENCY $(TEXT).ps
publish: $(TEXT).pdf
	if [ -d /mnt/c/Users/haubold/ownCloud\ -\ haubold@evolbio.mpg.de@owncloud.gwdg.de/docs/ ]; then \
		cp $(TEXT).pdf /mnt/c/Users/haubold/ownCloud\ -\ haubold@evolbio.mpg.de@owncloud.gwdg.de/docs/; \
	fi
r.dat: ../latex/r.dat
	cp ../latex/r.dat .
../latex/r.dat:
	make -C ../latex
genes.dat: ../genome/genes.dat
	cp ../genome/genes.dat .
../genome/genes.dat:
	make -C ../genome
%.tex: ../*/%.org $(TEXT).tex
	bash ../scripts/org2nw $< | awk -f ../scripts/preWeave.awk | noweave -n -x | sed 's/_test/\\_test/' > $@
clean:
	rm -f $(TEXT).aux $(TEXT).dvi $(TEXT).log $(TEXT).pdf $(TEXT).ps $(TEXT).toc $(SRC2) version.txt date.txt
