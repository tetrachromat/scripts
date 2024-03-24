DIRS = $(wildcard */)
BIN = /usr/local/bin

permissions:
	echo chown -R root:root $(DIRS)

all: permissions
	echo stow -t $(BIN) $(DIRS)

default: all

.PHONY: permissions all default
