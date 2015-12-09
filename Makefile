#OBJS specifies which files to compile as part of the project
OBJS = Main.cpp Piece.cpp View.cpp Board.cpp Game.cpp Commands.cpp

#CC specifies which compiler we're using
CC = g++
CFLAGS =-c -DLINUX -I. -LSDL2/lib
#OBJECTS=$(SOURCES:.CPP=.O)

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
COMPILER_FLAGS = -w

OBJECTS=$(OBJS:.cpp=.o)
LDFLAGS = -lSDL2 

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = Tetris

#This is the target that compiles our executable
all : $(OBJS) $(OBJ_NAME)

$(OBJ_NAME): $(OBJECTS)
	$(CC)  $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
# $(OBJS) $(COMPILER_FLAGS) -o $(OBJ_NAME)
