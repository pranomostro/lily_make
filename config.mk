PREFIX=/usr/local

CC=cc
AR=ar
RANLIB=ranlib

CFLAGS=-Wall -Wextra -std=c11 -pedantic -O2 -DM_PI=3.14159265358979323846264338327950288 -DLILY_VERSION_DIR=\"1.11\" -Isrc
LDFLAGS=-s -ldl -Isrc
ARFLAGS=-rcs

BIN=lily
SRC=run/lily.c
OBJ=$(SRC:.c=.o)
CONF=config.mk
