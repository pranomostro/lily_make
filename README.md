Easier, faster building of lily, less dependencies
==================================================

This is an alternative makefile and makefile configuration
for the standard implementation of the lily programming language.

The standard build process uses cmake, which introduces a C++
dependency and is more flexible than this process (includes the
possibility to use postgres and apache.

This process only depends on make and few shell utilities
like mv, rm and ar.

Using this build process
========================

    cp config.mk makefile /your/lily/dir
    make install

License
=======

./COPYING
