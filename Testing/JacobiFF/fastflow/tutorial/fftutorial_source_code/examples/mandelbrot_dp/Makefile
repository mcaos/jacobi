# ---------------------------------------------------------------------------
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License version 2 as 
#  published by the Free Software Foundation.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
#  As a special exception, you may use this file as part of a free software
#  library without restriction.  Specifically, if other files instantiate
#  templates or use macros or inline functions from this file, or you compile
#  this file and link it with other files to produce an executable, this
#  file does not by itself cause the resulting executable to be covered by
#  the GNU General Public License.  This exception does not however
#  invalidate any other reasons why the executable file might be covered by
#  the GNU General Public License.
#
# ---------------------------------------------------------------------------

# 
# Author: Massimo Torquati <torquati@di.unipi.it> 
# Date:   August 2014
#
#
OS = $(shell uname)
ifeq ($(strip $(OS)),Darwin)
  CXX = clang++	
  INCOPENCL =
  LIBOPENCL =  -framework OpenCL
else
ifndef OCL_ROOT
$(error The OCL_ROOT variable is not defined in your environment)
endif
  INCOPENCL = -I$(OCL_ROOT)/include
  LIBOPENCL = -L$(OCL_ROOT)/lib/x86_64 -lOpenCL  #-L$(OCL_ROOT)/lib64 
endif

FF_ROOT		= $(HOME)/fastflow

CC		= gcc
CXX		= g++ -std=c++11
INCLUDES	= -I. -I $(FF_ROOT) -I /usr/X11R6/include 
CFLAGS		= -Wall
CXXFLAGS  	= -Wall

LDFLAGS 	= -L . -L /usr/X11R6/lib 
LIBS            = -lmarX2 -lX11 -lm -pthread
OPTFLAGS	=  -O3 -finline-functions -DNDEBUG

TARGETS		= mandel mandel_nd mandelOCL mandelOCL_nd

.PHONY: all clean cleanall
.SUFFIXES: .cpp .o


%: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(OPTFLAGS) -o $@ $< $(LDFLAGS) $(LIBS)
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(OPTFLAGS) -c -o $@ $<



all		: $(TARGETS)


clean		: 
	rm -f $(TARGETS)
cleanall	: clean
	\rm -f *.o *~ *.a ./code_cl/*.bin ./code_cl/*~


libmarX2.a: ./lib/marX2.c ./lib/marX2.h
	$(CC) -c $(OPTIFLAGS) $(CFLAGS) $(INCLUDES) $<
	ar -rv libmarX2.a marX2.o
	ranlib libmarX2.a

mandel		: mandel.cpp libmarX2.a
mandel_nd  	: mandel.cpp libmarX2.a
	$(CXX) $(CXXFLAGS) -DNO_DISPLAY $(INCLUDES) $(OPTFLAGS) -o $@ $< $(LDFLAGS) $(LIBS)

mandelOCL: mandelOCL.cpp libmarX2.a
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(INCOPENCL) $(OPTFLAGS) -o $@ $< $(LDFLAGS) $(LIBOPENCL) $(LIBS)
mandelOCL_nd: mandelOCL.cpp libmarX2.a
	$(CXX) -DNO_DISPLAY $(CXXFLAGS) $(INCLUDES) $(INCOPENCL) $(OPTFLAGS) -o $@ $< $(LDFLAGS) $(LIBOPENCL) $(LIBS)


