HUGO_BIN=hugo

.PHONY: build demo release clean

default: clean build

build:
	$(HUGO_BIN) --gc --minify

server:
	$(HUGO_BIN) server --buildDrafts

clean:
	rm -rf public/
