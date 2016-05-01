Easier, faster building of lily, less dependencies
==================================================

This is an alternative makefile and makefile configuration
for the standard implementation of the lily programming language.

It is quite simple and hackable, but not as flexible as the
original cmake building process.

The standard build process uses cmake, which introduces a C++
dependency and is includes the possibility to use postgres and apache.

This process only depends on make and few shell utilities
like mv, rm and ar.

Using this build process
========================

    cp config.mk makefile /your/lily/dir
    make install

License
=======

./COPYING
