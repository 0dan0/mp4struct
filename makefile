# Address-sanitizer library
ASAN_FLAGS := -lasan
ifneq ($(OS),Windows_NT)
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		# macOS requires different a flag
		ASAN_FLAGS := -fsanitize=address
	endif
endif

mp4struct : mp4reader.o 
		gcc -o mp4struct mp4reader.o $(ASAN_FLAGS)

mp4reader.o : mp4reader.c mp4reader.h
		gcc -g -c mp4reader.c
clean :
		rm mp4struct mp4reader.o