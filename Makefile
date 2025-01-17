DIRS = $(wildcard */)
BIN = /usr/local/bin

help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?# "}; {printf "\033[32m%-10s\033[0m %s\n", $$1, $$2}'

all: permissions
	stow -t $(BIN) $(DIRS)

magenta: permissions # bar display fun misc net runit wrappers
	stow -t $(BIN) bar display fun misc net runit wrappers magenta

turquoise: permissions # bar display fun turquoise misc net runit wrappers
	stow -t $(BIN) bar display fun turquoise misc net runit wrappers

perm:
	chown -R root:root $(DIRS)

unperm:
	chown -R tetrachromat:tetrachromat $(DIRS)

.PHONY: all permissions magenta turquoise unperm
