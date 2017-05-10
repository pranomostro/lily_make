include config.mk

HDR= \
	src/dyna_builtin.h \
	src/dyna_random.h \
	src/dyna_sys.h \
	src/dyna_time.h \
	src/extras_builtin.h \
	src/extras_random.h \
	src/extras_time.h \
	src/lily_alloc.h \
	src/lily_api_dyna.h \
	src/lily_api_embed.h \
	src/lily_api_msgbuf.h \
	src/lily_api_value.h \
	src/lily_buffer_u16.h \
	src/lily_config.h \
	src/lily_core_types.h \
	src/lily_emitter.h \
	src/lily_expr.h \
	src/lily_generic_pool.h \
	src/lily_int_code_iter.h \
	src/lily_int_opcode.h \
	src/lily_keyword_table.h \
	src/lily_lexer.h \
	src/lily_library.h \
	src/lily_move.h \
	src/lily_options.h \
	src/lily_parser.h \
	src/lily_parser_tok_table.h \
	src/lily_pkg_builtin.h \
	src/lily_pkg_random.h \
	src/lily_pkg_sys.h \
	src/lily_pkg_time.h \
	src/lily_raiser.h \
	src/lily_string_pile.h \
	src/lily_symtab.h \
	src/lily_type_maker.h \
	src/lily_type_system.h \
	src/lily_utf8.h \
	src/lily_value_flags.h \
	src/lily_value_stack.h \
	src/lily_value_structs.h \
	src/lily_vm.h

LIBLILY=src/liblily.a
LIBLILYSRC= \
	src/lily_alloc.c \
	src/lily_api_value.c \
	src/lily_buffer_u16.c \
	src/lily_code_iter.c \
	src/lily_emitter.c \
	src/lily_expr.c \
	src/lily_generic_pool.c \
	src/lily_lexer.c \
	src/lily_library.c \
	src/lily_move.c \
	src/lily_msgbuf.c \
	src/lily_options.c \
	src/lily_parser.c \
	src/lily_pkg_builtin.c \
	src/lily_pkg_random.c \
	src/lily_pkg_sys.c \
	src/lily_pkg_time.c \
	src/lily_raiser.c \
	src/lily_string_pile.c \
	src/lily_symtab.c \
	src/lily_type_maker.c \
	src/lily_type_system.c \
	src/lily_utf8.c \
	src/lily_value_stack.c \
	src/lily_vm.c \
	src/st.c

LIB=$(LIBLILY)
LIBLILYOBJ=$(LIBLILYSRC:.c=.o)

all: $(BIN)

$(BIN): $(OBJ) $(LIB)
	$(CC) $(LDFLAGS) -o $@ $(OBJ) $(LIB)

$(OBJ): $(CONF)
$(LIB): $(CONF)

.c.o:
	$(CC) $(CFLAGS) -o $@ -c $<

$(LIBLILY): $(LIBLILYOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

clean:
	rm -f $(BIN) $(OBJ) $(LIB) $(LIBLILYOBJ)

install: all
	mkdir -p $(PREFIX)/bin/
	cp $(BIN) $(PREFIX)/bin/
	cd $(PREFIX)/bin/ && chmod 755 $(BIN)

uninstall:
	cd $(PREFIX)/bin/ && rm -f $(BIN)

.PHONY: all clean install uninstall
