# DEFAULT BENCHMARK CONFIGURATION
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc = gcc
n  = 10000000
##############################################################################
# DO NOT MODIFY BEYOND THIS POINT                                            #
##############################################################################
-include ../mk/$(cc)/stdflags.mk
-include ../mk/$(cc)/opt/$(opt).mk
-include ../mk/$(cc)/xflags/$(xflags).mk
-include ../mk/$(cc)/stream/stdflags.mk
# ----------------------------------------------------------------------------
BINDIR ?= ./bin
OUT    := $(BINDIR)/stream
INPUT   = ./src/stream.c
# ----------------------------------------------------------------------------
CARGS  += -o$(OUT) $(OPTLEVEL) $(CFLAGS) $(XCFLAGS) $(INPUT) $(LDFLAGS)
# ----------------------------------------------------------------------------
SHELL_HACK := $(shell mkdir -p $(BINDIR))

$(OUT): $(wildcard src/*.c)
	$(CC) $(CARGS)

run: all
	@date
	@echo "Running STREAM..." 
	@$(OUT)

clean:
	@-rm -f $(OUT) core a.out *.o
	@-rm -f $(BINDIR)/*
	@-rmdir $(BINDIR)
