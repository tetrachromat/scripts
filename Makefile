DIRS = $(wildcard */)
BIN = /usr/local/bin

help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?# "}; {printf "\033[32m%-10s\033[0m %s\n", $$1, $$2}'

all: permissions
	stow -t $(BIN) $(DIRS)

ryuko: permissions # bar display fun g14 misc net runit wrappers
	stow -t $(BIN) bar display fun g14 misc net runit wrappers

senketsu: permissions # bar display fun senketsu misc net runit wrappers
	stow -t $(BIN) bar display fun senketsu misc net runit wrappers

permissions:
	chown -R root:root $(DIRS)

unperm:
	chown -R phat_sumo:phat_sumo $(DIRS)

.PHONY: all permissions ryuko senketsu unperm
