
#example from chatgpt:

# Compiler
CC = gcc
CFLAGS = -Wall -Wextra -Werror

# Target program
NAME = my_program

# Source files
SRCS = main.c utils.c

# Object files
OBJS = $(SRCS:.c=.o)

# Rule to create the executable
$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

# Rule to compile .c files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

# Rebuild everything
re: fclean $(NAME)

#from the subject-pdf:
The dictionary will have the following rules:
[a number][0 to n spaces]:[0 to n spaces][any printable characters]\n
