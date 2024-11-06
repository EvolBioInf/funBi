all: hello.tex
hello.tex: latex.org
	bash ../scripts/org2nw latex.org | notangle -Rhello.tex > hello.tex
clean:
	rm -f hello.tex
