#OBJS specifies which files to compile as part of the project
OBJS = Main.cpp Piece.cpp View.cpp Board.cpp Game.cpp Commands.cpp

#CC specifies which compiler we're using
CC = g++

#LDFLAGS specifies the additional library paths we'll need
LDFLAGS = -lSDL2 -lSDL2_gfx

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = Tetris

#This is the target that compiles our executable
all : $(OBJS)
        $(CC) $(OBJS) -o $(OBJ_NAME) $(LDFLAGS)
