nw = $(shell which noweb)

all: unix.sh

unix.sh: unix.org
	if [ "$(nw)" != "" ]; then\
		bash ../scripts/org2nw unix.org | notangle -Runix.sh > unix.sh
	fi
clean:
	rm -rf cli.sh
