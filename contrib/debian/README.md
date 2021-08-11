
Debian
====================
This directory contains files used to package valutod/valuto-qt
for Debian-based Linux systems. If you compile valutod/valuto-qt yourself, there are some useful files here.

## valuto: URI support ##


valuto-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install valuto-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your valutoqt binary to `/usr/bin`
and the `../../share/pixmaps/valuto128.png` to `/usr/share/pixmaps`

valuto-qt.protocol (KDE)
