#!/bin/make -f

# Version
RELEASE = 1
LEVEL = 20
SUBLEVEL = 7

export VERSION = $(RELEASE).$(LEVEL).$(SUBLEVEL)
# Since mokutil is common for most Linux distro keep name simple.
export NAME = mokuntil-key

# Use root directory.
DEB = debian
BIN = /usr/bin/$(NAM)
DOC = /usr/share/doc/$(NAME)
MAN = /usr/share/man/$(NAM).1
LIB = /usr/lib/$(NAME)

package-deb:


# Either install directly or build as a debian package.
install:
	cp -f man/mokutil-key.1 /usr/share/man/man1/
	gzip -9 -f /usr/share/man/man1/mokutil-key.1
	cp -f scr/mokutil-key /usr/bin/

clean:
	@rm -rf $(DEB)
