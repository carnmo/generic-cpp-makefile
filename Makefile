.ONESHELL:
.RECIPEPREFIX = >

SOURCEPATH=src
LIBPATH=lib
SOURCES=$(wildcard $(SOURCEPATH)/*.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
TARGET=target

CXXFLAGS=-g0
CXXFLAGS+=-m64
CXXFLAGS+=-march=native
CXXFLAGS+=-mtune=native
CXXFLAGS+=-O2
CXXFLAGS+=-pedantic
CXXFLAGS+=-pedantic-errors
CXXFLAGS+=-pipe
CXXFLAGS+=-s
CXXFLAGS+=-std=c++23
CXXFLAGS+=-Wall
CXXFLAGS+=-Werror
CXXFLAGS+=-Wextra
CXXFLAGS+=-Wpedantic

LDFLAGS=-L$(LIBPATH)
LDLIBS=

all: $(TARGET)

clean:
> $(RM) $(OBJECTS)
> $(RM) $(TARGET)

run:
> ./$(TARGET)

$(TARGET): $(OBJECTS)
> $(LINK.cpp) $^ -o $@ $(LDLIBS)
