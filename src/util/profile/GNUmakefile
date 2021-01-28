# $Id: GNUmakefile 23746 2013-03-12 18:00:54Z edo $
#
OBJ_OPTIMIZE = tpi_ga.o tpi_dgemm.o tpi_nxtask.o tpi_profile.o tce_config.o

LIBRARY = libnwcutil.a

ifeq (1, $(ENABLE_TPI_PROFILE))
LIB_INCLUDES = -I$(MPI_INCLUDE)
LIB_DEFINES = -DENABLE_TPI_PROFILE
endif

ifeq ($(BLAS_SIZE),8)
	LIB_DEFINES += -DUSE_INTEGER8
endif

HEADERS = 

include ../../config/makefile.h
include ../../config/makelib.h
