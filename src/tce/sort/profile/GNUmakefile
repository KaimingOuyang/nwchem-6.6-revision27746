# $Id: GNUmakefile 23746 2013-03-12 18:00:54Z edo $
#
OBJ_OPTIMIZE = tpi_profile_sort.o tpi_profile_sortacc.o tpi_profile_sort_4kg.o

LIBRARY = libtce.a

ifeq (1, $(ENABLE_TPI_PROFILE))
LIB_INCLUDES = -I$(MPI_INCLUDE)
LIB_DEFINES = -DENABLE_TPI_PROFILE
endif

HEADERS = 

include ../../../config/makefile.h
include ../../../config/makelib.h
