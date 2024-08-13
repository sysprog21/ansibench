# Standard flags for STREAM with GCC
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CFLAGS += -DSTREAM_ARRAY_SIZE=$(n)
LDFLAGS += -lm $(mp)
