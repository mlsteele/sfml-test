CC=g++
CFLAGS=-c -Wall
LDFLAGS=-lsfml-system -lsfml-window -lsfml-graphics
SOURCES=main.cpp
BUILD_DIR=build
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=sfml_test

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(BUILD_DIR)/$@ $(LDFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
