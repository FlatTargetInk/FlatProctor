CC	= g++
CFLAGS	= 
_OBJ	= main.o model.o
OBJ	= $(patsubst %,$(ODIR)/%,$(_OBJ))
DEPS	= model.h

ODIR	= obj
SDIR 	= src

$(ODIR)/%.o: $(SDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

flatproctor: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

