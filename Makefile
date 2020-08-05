#!/bin/make -f

# Version
RELEASE = 1
LEVEL = 40
SUBLEVEL = 08

export VERSION = $(RELEASE).$(LEVEL).$(SUBLEVEL)
# Since mokutil is common for most Linux distro keep name simple.
export NAME = mokutil-key

# Use root directory.
DEB = debian
BIN = usr/bin
DOC = usr/share/doc
MAN = usr/share/man

export DEB BIN DOC MAN LIB

package-deb:
	rm -Rf $(DEB)/*
	scripts/packaging bindeb-pkg


# Either install directly or build as a debian package.
install:
	cp -f man/mokutil-key.1 /usr/share/man/man1/
	gzip -9 -f /usr/share/man/man1/mokutil-key.1
	sed "8iVERSION=\"$(VERSION)\"" scr/$(NAME) > \
		/$(BIN)/$(NAME)

clean:
	@rm -rf $(DEB)
