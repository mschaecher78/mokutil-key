#!/bin/make -f

# Version
export VERSION = 1.20.6.25

DEB = debian
NAME = mokutil-key

package-deb:
	@mkdir -p $(DEB)/$(NAME) $(DEB)/$(NAME)/usr/share/man $(DEB)/$(NAME)/usr/bin
	@touch $(DEB)/changelog

	# Set the version for the script.
	@sed "10iVERSION=${VERSION}		# Version" scr/mokutil-key > \
		$(DEB)/$(NAME)/usr/bin/mokuntil-key

	#


# Either install directly or build as a debian package.
install:
	cp -f man/mokutil-key.1 /usr/share/man/man1/
	gzip -9 -f /usr/share/man/man1/mokutil-key.1
	cp -f scr/mokutil-key /usr/bin/

clean:
	@rm -rf $(DEB)
