nw = $(shell which noweb)

all: seq.sh

seq.sh: alignment.org
	if [ "$(nw)" != "" ]; then\
		bash ../scripts/org2nw alignment.org | notangle -Rseq.sh > seq.sh\
	fi
clean:
	rm -f *.sh *.fasta
