Easier, faster building of lily, less dependencies
==================================================

This is an alternative makefile and makefile configuration
for the standard implementation of the [lily programming
language](https://github.com/fascinatedbox/lily).

It simpler and more portable, but not as flexible as the original cmake
building process, which included the option to build it with apache
and postres.

This process only depends on make and few shell utilities like mv,
rm and ar.

Using this build process
========================

	cp config.mk makefile /your/lily/dir
	make install

License
=======

See [./LICENSE](./LICENSE).
