WINDOWS BUILD NOTES
====================

Some notes on how to build VALUTO Core for Windows.

Most developers use cross-compilation from Ubuntu to build executables for
Windows. This is also used to build the release binaries.

Building on Windows itself is possible (for example using msys / mingw-w64),
but no one documented the steps to do this. If you are doing this, please contribute them.

Cross-compilation
-------------------

These steps can be performed on, for example, an Ubuntu VM. The depends system
will also work on other Linux distributions, however the commands for
installing the toolchain will be different.

First install the toolchains:

    sudo apt-get install g++-mingw-w64-i686 mingw-w64-i686-dev g++-mingw-w64-x86-64 mingw-w64-x86-64-dev git

Acquire the source in the usual way:

    git clone https://github.com/VALUTO-Core/VALUTO.git

To build executables for Windows 32-bit:

    cd VALUTO
    PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g') # strip out problematic Windows %PATH% imported var
    cd depends
    make HOST=i686-w64-mingw32 -j4
    cd ..
    ./configure --prefix=`pwd`/depends/i686-w64-mingw32
    sudo update-alternatives --config i686-w64-mingw32-g++ #For Ubuntu Xenial 16.04, Ubuntu Artful 17.10 and Windows Subsystem for Linux: Set the default mingw32 g++ compiler option to posix.
    make

To build executables for Windows 64-bit:

    cd VALUTO
    PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g') # strip out problematic Windows %PATH% imported var
    cd depends
    make HOST=x86_64-w64-mingw32 -j4
    cd ..
    ./configure --prefix=`pwd`/depends/x86_64-w64-mingw32
    sudo update-alternatives --config x86_64-w64-mingw32-g++ # Ubuntu Xenial 16.04 and Windows Subsystem for Linux: Set the default mingw32 g++ compiler option to posix.
    make

For further documentation on the depends system see [README.md](../depends/README.md) in the depends directory.
