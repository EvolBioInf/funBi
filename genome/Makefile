all: drawGenes.awk mgGenome.pdf genome.sh tikz_1.tex
drawGenes.awk: genome.org
	bash ../scripts/org2nw genome.org | notangle -RdrawGenes.awk > drawGenes.awk
mgGenome.pdf: mgGenome.tex tikz_1.tex
	pdflatex mgGenome
mgGenome.tex: genome.org
	bash ../scripts/org2nw genome.org | notangle -RmgGenome.tex > mgGenome.tex
tikz_1.tex: mgGenome.tex
	awk -f ../scripts/exTikz.awk genome.tex
genome.sh: genome.org
	bash ../scripts/org2nw genome.org | notangle -Rgenome.sh > genome.sh
tikz_1.tex: genome.org
	awk -f ../scripts/exTikz.awk mgGenome.tex
clean:
	rm -f drawGene.awk
