CC = clang++
CFLAGS = -Wall -Wextra -g

SRCS := $(wildcard */main.cpp)
BINS := $(patsubst %/main.cpp, output/%, $(SRCS))

all: $(BINS)

output/%: %/main.cpp
	@mkdir -p output
	$(CC) $(CFLAGS) $< -o $@ -I/include

clean:
	rm -rf output/*
