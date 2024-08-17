BINDIR ?= bin

CC ?= gcc
CFLAGS ?=
LDFLAGS ?=

TESTBENCHES := \
	coremark \
	nbench \
	stream

SHELL_HACK := $(shell mkdir -p $(abspath $(BINDIR)))

.PHONY: all clean

all: $(foreach tb,$(TESTBENCHES),$(BINDIR)/$(tb))

define build-target
$(BINDIR)/$(tb): $(wildcard $(tb)/src/*.c)
	@CC=$(CC) CFLAGS="$(CFLAGS)" LDFLAGS="$(LDFLAGS)" BINDIR=$(abspath $(BINDIR)) $(MAKE) -C $(tb)
endef

$(foreach tb,$(TESTBENCHES),$(eval $(build-target)))

clean:
	$(RM) $(foreach tb,$(TESTBENCHES),$(abspath $(BINDIR))/$(tb))
