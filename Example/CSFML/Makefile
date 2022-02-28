##
## EPITECH PROJECT, 2022
## Base MakeFile
## File description:
## Makefile
##

SRC			=	src/my_csfml_project.c

MAIN 		=	main.c

MAIN_OBJ 	=	$(MAIN:.c=.o)

SRC_OBJ 	= 	$(SRC:.c=.o)

NAME		=	my_csfml_project

CPPFLAGS 	=	-I ./include -W -Wall -Wextra -O2

LIBCSFML	=	-lcsfml-graphics -lcsfml-system -lcsfml-audio

all:		$(NAME)

$(NAME): $(MAIN_OBJ) $(SRC_OBJ)
	gcc -o $(NAME) $(SRC_OBJ) $(MAIN_OBJ) $(LIBCSFML) $(CPPFLAGS)

clean:
	rm -f *~
	rm -f *#
	rm -f *.o
	rm -f src/*.o
	rm -f a.out

fclean: clean
	rm -f $(NAME)

re: fclean all

run: re
	make clean
	./$(NAME)

debug: CPPFLAGS += -g
debug: re

.PHONY: all clean fclean re run debug