#!/bin/make -f

# Either install directly or build as a debian package.
install:
	cp -f man/mokutil-key.1 /usr/share/man/man1/
	gzip -9 -f /usr/share/man/man1/mokutil-key.1
	cp -f scr/mokutil-key /usr/bin/
