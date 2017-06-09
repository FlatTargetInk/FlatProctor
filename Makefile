CC	= g++
CFLAGS	= 
_OBJ	= main.o 
OBJ	= $(patsubst %,$(ODIR)/%,$(_OBJ))
DEPS	= 

ODIR	= obj
SDIR 	= src

$(ODIR)/%.o: $(SDIR)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

flatproctor: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

