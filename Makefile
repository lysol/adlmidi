#CXX=i686-w64-mingw32-g++ -m64
#CXX=x86_64-w64-mingw32-g++ -m64 -static-libgcc -static-libstdc++

CXX     = g++
CXXLINK = $(CXX)

#DEBUG = -O0 -fno-inline -D_GLIBCXX_DEBUG -g -fstack-protector-all -fdata-sections -fsanitize=address

DEBUG=-Ofast -g -fopenmp -march=native

#DEBUG += -fno-tree-vectorize

# -march=pentium -mno-sse -mno-sse2 -mno-sse3 -mmmx

CPPFLAGS += $(shell pkg-config --cflags sdl)
LDLIBS   += $(shell pkg-config --libs sdl)
#CPPFLAGS += $(SDL)

#LDLIBS += -lwinmm

CPPFLAGS += -std=c++1y -pedantic -Wall -Wextra

include make.rules

