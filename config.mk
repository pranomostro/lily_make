#configure the building of lily

PREFIX=/usr/local

RM=rm -f
MV=mv

AR=ar
ARFLAGS=-rcs

CC=cc
CFLAGS=-DLILY_VERSION_DIR=\"0_16\" -Isrc
LDFLAGS=-ldl -Isrc

TARGET=lily
LIB=src/liblily.a

SRC=src/csiphash.c src/lily_cls_double.c src/lily_msgbuf.c src/lily_alloc.c src/lily_cls_integer.c src/lily_emitter.c src/lily_raiser.c src/lily_value.c src/lily_cls_dynamic.c src/lily_ast.c src/lily_cls_list.c src/lily_opcode_table.c src/lily_vm.c src/lily_cls_either.c src/lily_symtab.c src/lily_buffers.c src/lily_cls_option.c src/lily_lexer.c src/lily_parser.c src/lily_cls_file.c src/lily_type_maker.c src/lily_cls_boolean.c src/lily_cls_string.c src/lily_library.c src/lily_cls_function.c src/lily_pkg_builtin.c src/lily_type_system.c src/lily_cls_bytestring.c src/lily_membuf.c src/lily_cls_hash.c src/lily_pkg_sys.c src/lily_utf8.c em/sandbox.c

OBJ=$(SRC:.c=.o)
