COMPILER=gcc
CFLAGS=-ggdb -Wall

SRC = *.c 
OBJ = $(SRC:.c=.o)

HEADERS = *.h 

#INCLUDEDIRS = -I. -I/usr/include/mysql -I../include -I/usr/include/gnet-2.0 -I/usr/lib/gnet-2.0/include/ -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include
#LIBRARYDIRS = -L. -L/usr/local/lib -L/lib
#LIBRARIES = -ltime -ltst


INCLUDEDIRS = -I. -I/usr/local/include

GLIB_CFLAGS=`pkg-config glib-2.0 --cflags`# gthread-2.0 --cflags`
GLIB_LIBS=`pkg-config glib-2.0 --libs`# gthread-2.0 --libs`


.c.o:
	$(COMPILER) $(CFLAGS) $(INCLUDEDIRS) $(GLIB_CFLAGS) -c $< 

all: scrabble-ai

scrabble-ai: $(OBJ)
	#$(COMPILER) $(CFLAGS) $(INCLUDEDIRS) $(GLIB_CFLAGS) -c $(SRC)
	$(COMPILER) -o $@ $(OBJ) $(LIBRARIES) $(GLIB_LIBS) 

clean:
	rm -f *.o scrabble-ai 


