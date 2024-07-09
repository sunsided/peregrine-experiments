# just build

all: clean build

clean:
    rm -f fibonacci

build:
    peregrine compile src/fibonacci.pe -o fibonacci

default:
    @echo "make all:   Build everything"
    @echo "make clean: Clean build outputs"

run: build
    ./fibonacci
