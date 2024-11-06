all: cli.sh
cli.sh: funBi.org
	bash ../scripts/org2nw funBi.org | notangle -Rcli > cli.sh
clean:
	rm -rf cli.sh
