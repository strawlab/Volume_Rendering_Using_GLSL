CC = g++
OFLAG = -o
CFLAGS = -c -Wall -g -DDEBUG
LIB = -lGLEW -lglut -lGL -lGLU
LIB_DIR = -L"./lib"
INC_DIR = -I"./include"


all: main.o
	$(CC) $(OFLAG) main main.o  $(LIB_DIR) $(LIB)
main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp $(INC_DIR)
clean:
	rm main.o main
