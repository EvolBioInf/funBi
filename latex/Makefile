nw = $(shell which noweb)

all: hello.tex tikz_1.tex tikz_2.tex cli.sh

hello.tex: latex.org
	if [ "$(nw)" != "" ]; then\
		bash ../scripts/org2nw latex.org | notangle -Rhello.tex > hello.tex;\
	fi
cli.sh: latex.org
	if [ "$(nw)" != "" ]; then\
		bash ../scripts/org2nw latex.org | notangle -Rcli > cli.sh;\
	fi
tikz_1.tex: hello.tex
	awk -f ../scripts/exTikz.awk hello.tex
tikz_2.tex: hello.tex r.dat
	awk -f ../scripts/exTikz.awk hello.tex
r.dat: cli.sh
	tail -n 3 cli.sh > r.sh
	bash r.sh
clean:
	rm -f hello.tex tikz_*.tex cli.sh r.dat
