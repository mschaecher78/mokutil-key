# MOKUTIL-KEY

Understanding how to setup and use openssl key for use for secure boot can be a chore. Mostly
since the guides on how to do this are either to wordy or not wordy enough. This simple bash
script is designed to make life easier (mostly for me).



Install
```
sudo make install
```

Build deb package
```
make package-deb
```

Clean up
```
make clean
```

Todo List:
- [ ] Write bash completion script.
- [ ] Add private/public key verification.
- [x] Make path part of signing image/file.
- [ ] Add option to delete key from MOK.
- [x] Create manpage.
- [x] Use Makefile to dictate version.
- [x] Show help/version info without root be required.
- [x] All for different openssl.conf to be used.
- [x] All for file naming.
- [x] Set rsa size.
