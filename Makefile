.DEFAULT_GOAL := default
.PHONY: default clean

all: clean fibonacci

clean:
	rm -f fibonacci

fibonacci: src/fibonacci.pe
	peregrine compile src/fibonacci.pe -o fibonacci

default:
	@echo "make all:   Build everything"
	@echo "make clean: Clean build outputs"
