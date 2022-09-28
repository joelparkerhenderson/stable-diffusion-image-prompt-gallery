all: groups cover book

.PHONY: clean
clean:
	rm -f build/groups/*
	rm -f stable-diffusion-image-prompt-gallery-book.pdf

.PHONY: groups
groups:
	bin/make-groups

.PHONY: cover
cover: groups
	bin/make-cover

.PHONY: book
book: groups cover
	bin/make-book
