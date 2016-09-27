#configure the building of lily

PREFIX=/usr/local

RM=rm -f
MV=mv

AR=ar
ARFLAGS=-rcs

CC=cc
CFLAGS=-DLILY_VERSION_DIR=\"0.17\" -Isrc
LDFLAGS=-ldl -Isrc

TARGET=lily
LIB=src/liblily.a

SRC=src/csiphash.c src/lily_buffer_u16.c src/lily_generic_pool.c src/lily_msgbuf.c src/lily_raiser.c src/lily_type_system.c src/lily_alloc.c src/lily_code_iter.c src/lily_lexer.c src/lily_parser.c src/lily_string_pile.c src/lily_utf8.c src/lily_api_options.c src/lily_emitter.c src/lily_library.c src/lily_pkg_builtin.c src/lily_symtab.c src/lily_value_stack.c src/lily_api_value.c src/lily_expr.c src/lily_move.c src/lily_pkg_sys.c src/lily_type_maker.c src/lily_vm.c

OBJ=$(SRC:.c=.o)
