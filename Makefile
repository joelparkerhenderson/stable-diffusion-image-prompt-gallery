all: groups book

.PHONY: clean
clean:
	rm -f build/groups/*
	rm -f stable-diffusion-image-prompt-gallery-book.pdf

.PHONY: groups
groups:
	bin/make-groups

.PHONY: book-montage-images
book-montage-images: groups
	bin/make-book-montage-images

.PHONY: book
book: groups book-montage-images
	bin/make-book
