
#-------------------------------------------------
#	Note: This is generated Automatically
#
#	Salasa A. Nawang
#	Computational Physics Group
#	MSU-Iligan Institute of Technology
#	Iligan City
#	zaldynow@gmail.com
#-------------------------------------------------
#
#
# PLS DO NOT EDIT UNLESS YOU KNOW WHAT YOU ARE DOING    
#
#
#-------------------------------------------------

CLASS_NAME=SampleCode
CC = g++


CFLAGS = -g -Wall -Wno-deprecated


ROOTCFLAGS   := $(shell root-config --cflags)
ROOTLIBS     := $(shell root-config --libs)
ROOTGLIBS    := $(shell root-config --glibs)

CXXFLAGS     += $(ROOTCFLAGS)
LIBS          = $(ROOTLIBS) $(SYSLIBS)
GLIBS         = $(ROOTGLIBS) $(SYSLIBS)


SRCS = ${CLASS_NAME}.cc ${CLASS_NAME}_Main.cc

OBJS = ${CLASS_NAME}.o ${CLASS_NAME}_Main.o

INCS = -I${ROOTCFLAGS}

PROG = ${CLASS_NAME}

all :: $(PROG)

$(PROG):$(OBJS)
	$(CC) $(CXXFLAGS) -o $@ $(OBJS) $(MYLIBS) $(LIBS) $(GLIBS)

	
.cc.o:
	$(CC) -o $@ $(CXXFLAGS) $(INCS) -c $<

clean:
	@rm -f $(PROG)  *.o  *~ core
