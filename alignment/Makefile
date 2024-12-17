all: seq.sh

seq.sh: alignment.org
	bash ../scripts/org2nw alignment.org | notangle -Rseq.sh > seq.sh

clean:
	rm -f *.sh *.fasta
