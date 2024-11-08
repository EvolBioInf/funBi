dirs = genome latex unix
all:
	for dir in $(dirs); do \
		make -C $$dir; \
	done
doc:
	make -C doc
clean:
	for dir in $(dirs); do \
		make clean -C $$dir; \
	done
	make -C clean doc
