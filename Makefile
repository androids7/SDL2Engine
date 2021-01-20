
CC=mingw32-g++
TARGET = main.exe
CFLAGS=  -Wall -O2 -std=c++11 -I $(INCLUDE_SDL2) -I $(INCLUDE_IMAGE) -I $(INCLUDES_TTF) -L $(LIB_SDL2) -L $(LIB_IMAGE) -L $(LIB_TTF) -lmingw32   -lSDL2main -l$(LD_SDL2) -l$(LD_IMAGE) -l$(LD_TTF)   
SRCS := $(wildcard *.cpp) 
INCLUDE_SDL2=D:\SDL2Dev\SDL2-2.0.12\i686-w64-mingw32\include\SDL2
INCLUDE_IMAGE+=D:\SDL2Dev\SDL2_image-2.0.5\i686-w64-mingw32\include\SDL2
INCLUDES_TTF=D:\SDL2Dev\SDL2_ttf-2.0.15\i686-w64-mingw32\include\SDL2

LIB_SDL2=D:\SDL2Dev\SDL2-2.0.12\i686-w64-mingw32\lib
LIB_IMAGE=D:\SDL2Dev\SDL2_image-2.0.5\i686-w64-mingw32\lib
LIB_TTF=D:\SDL2Dev\SDL2_ttf-2.0.15\i686-w64-mingw32\lib

LD_SDL2=SDL2
LD_IMAGE=SDL2_image
LD_TTF=SDL2_ttf

 #表示获取当前目录下的c文件集，放在变量SRCS中
OBJS := $(patsubst %cpp, %o, $(SRCS))  
 #表示将对应的c文件名转为o文件后放在下面的OBJS变量中
 all: $(TARGET)  




$(TARGET): $(OBJS)  
	$(CC)  $(CFLAGS) -o $@ $^
%.o:%.cpp
	$(CC)  $(CFLAGS) -c $<

clean:  
	del.exe *.o 
	del.exe main.exe
	#	rm -f *.o $(TARGET) linux