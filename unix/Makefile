all: cli.sh
cli.sh: unix.org
	bash ../scripts/org2nw unix.org | notangle -Runix.sh > unix.sh
clean:
	rm -rf cli.sh
