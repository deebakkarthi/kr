# Disable all builtin rules and variables and always run unconditionally
MAKEFLAGS += -r -R -B
CC = gcc-15
CFLAGS = -Wall -Wextra -Wpedantic -Werror -std=c89


# Rule to just compile any given C file to a.out
%.c:
	$(CC) $(CFLAGS) $@ -o a.out 
	./a.out
