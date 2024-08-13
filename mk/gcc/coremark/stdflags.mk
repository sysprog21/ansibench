# Standard flags for CoreMark with GCC/VisualAge C
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CFLAGS += -D_POSIX_C_SOURCE=199309L
CFLAGS += -DPERFORMANCE_RUN=1
CFLAGS += -DMULTITHREAD=$(threads) -D$(multithread) 
CFLAGS += -D$(pointer)
