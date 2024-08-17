# DEFAULT BENCHMARK CONFIGURATION
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc          = gcc
##############################################################################
# DO NOT MODIFY BEYOND THIS POINT                                            #
##############################################################################
-include ../mk/$(cc)/stdflags.mk
-include ../mk/$(cc)/opt/$(opt).mk
-include ../mk/$(cc)/xflags/$(xflags).mk
-include ../mk/$(cc)/nbench/stdflags.mk
# ----------------------------------------------------------------------------
BINDIR ?= ./bin
OUT    := $(BINDIR)/nbench
INPUT   = ./src/nbench0.c ./src/nbench1.c
INPUT  += ./src/hardware.c ./src/emfloat.c ./src/sysspec.c ./src/misc.c
# ----------------------------------------------------------------------------
CARGS  += -o$(OUT) $(OPTLEVEL) $(CFLAGS) $(XCFLAGS) $(INPUT) $(LDFLAGS)
# ----------------------------------------------------------------------------
SHELL_HACK := $(shell mkdir -p $(BINDIR))

$(OUT): $(wildcard src/*.c)
	$(CC) $(CARGS)

run: all
	@date
	@echo "Running NBench..." 
	@$(OUT) 2>&1

clean:
	@-rm -f $(OUT) core a.out *.o
	@-rm -f $(BINDIR)/*
	@-rmdir $(BINDIR)
