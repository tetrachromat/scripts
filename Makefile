DIRS = $(wildcard */)
BIN = /usr/local/bin

all: permissions
	stow -t $(BIN) $(DIRS)

permissions:
	chown -R root:root $(DIRS)

.PHONY: permissions all
