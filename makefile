#bare-bones dead simple makefile for building lily, no apache or postgres

include config.mk

all: $(TARGET)

$(TARGET): $(LIB) run/lily.c
	$(CC) $(LDFLAGS) run/lily.c $(LIB) -o $@

$(LIB): $(OBJ)
	$(AR) $(ARFLAGS) $@ $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ) $(LIB) $(TARGET)

install: $(TARGET)
	$(MV) $(TARGET) $(PREFIX)/bin

uninstall:
	$(RM) $(PREFIX)/bin/$(TARGET)

.PHONY: all clean install uninstall
