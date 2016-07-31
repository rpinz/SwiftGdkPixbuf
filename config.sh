#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
Mod=GdkPixbuf
Module=${Mod}-2.0
module=gdk-pixbuf-2.0
export PATH=`pwd`/.build/gir2swift/.build/debug:"${PATH}"
LINKFLAGS=`pkg-config --libs $module gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module  gio-unix-2.0 glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
