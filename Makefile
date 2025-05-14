
dirs = genome latex unix alignment doc

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
	make clean -C doc
