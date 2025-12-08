CC = gcc
CFLAGS = -Wall -Wextra

SRCS := $(wildcard */main.c)
BINS := $(patsubst %/main.c, output/%, $(SRCS))

all: $(BINS)

output/%: %/main.c
	@mkdir -p output
	$(CC) $(CFLAGS) $< -o $@ -I$*/include

clean:
	rm -rf output/*
