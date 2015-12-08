#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: banthony <banthony@students.42.fr>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/23 16:22:07 by banthony          #+#    #+#              #
#    Updated: 2015/12/07 16:44:05 by banthony         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SRC = ./ft_putchar.c	\
	./ft_putstr.c	\
	./ft_strcpy.c	\
	./ft_strlen.c	\
	./ft_putnbr.c	\
	./ft_atoi.c	\
	./ft_putchar_fd.c	\
	./ft_putnbr_fd.c	\
	./ft_putstr_fd.c	\
	./ft_strcmp.c	\
	./ft_strncmp.c	\
	./ft_strncpy.c	\
	./ft_strnstr.c	\
	./ft_strstr.c	\
	./ft_isalpha.c	\
	./ft_isdigit.c	\
	./ft_isalnum.c	\
	./ft_isascii.c	\
	./ft_isprint.c	\
	./ft_toupper.c	\
	./ft_tolower.c	\
	./ft_putendl.c	\
	./ft_putendl_fd.c	\
	./ft_memset.c	\
	./ft_bzero.c	\
	./ft_strnew.c	\
	./ft_memalloc.c	\
	./ft_memdel.c	\
	./ft_strdup.c	\
	./ft_strdel.c	\
	./ft_strclr.c	\
	./ft_striter.c	\
	./ft_striteri.c	\
	./ft_strmap.c	\
	./ft_strmapi.c	\
	./ft_strequ.c	\
	./ft_strnequ.c	\
	./ft_strsub.c	\
	./ft_strjoin.c	\
	./ft_strtrim.c	\
	./ft_strchr.c	\
	./ft_strrchr.c	\
	./ft_strcat.c	\
	./ft_strncat.c	\
	./ft_memcpy.c	\
	./ft_memccpy.c	\
	./ft_memmove.c	\
	./ft_memchr.c	\
	./ft_memcmp.c	\
	./ft_strlcat.c	\
	./ft_itoa.c	\
	./ft_strsplit.c	\
	./ft_lstnew.c	\
	./ft_lstdelone.c	\

OBJ = ./ft_putchar.o	\
	./ft_putstr.o	\
	./ft_strcpy.o	\
	./ft_strlen.o	\
	./ft_putnbr.o	\
	./ft_atoi.o	\
	./ft_putchar_fd.o	\
	./ft_putnbr_fd.o	\
	./ft_putstr_fd.o	\
	./ft_strcmp.o	\
	./ft_strncmp.o	\
	./ft_strncpy.o	\
	./ft_strnstr.o	\
	./ft_strstr.o	\
	./ft_isalpha.o	\
	./ft_isdigit.o	\
	./ft_isalnum.o	\
	./ft_isascii.o	\
	./ft_isprint.o	\
	./ft_toupper.o	\
	./ft_tolower.o	\
	./ft_putendl.o	\
	./ft_putendl_fd.o	\
	./ft_memset.o	\
	./ft_bzero.o	\
	./ft_strnew.o	\
	./ft_memalloc.o	\
	./ft_memdel.o	\
	./ft_strdup.o	\
	./ft_strdel.o	\
	./ft_strclr.o	\
	./ft_striter.o	\
	./ft_striteri.o	\
	./ft_strmap.o	\
	./ft_strmapi.o	\
	./ft_strequ.o	\
	./ft_strnequ.o	\
	./ft_strsub.o	\
	./ft_strjoin.o	\
	./ft_strtrim.o	\
	./ft_strchr.o	\
	./ft_strrchr.o	\
	./ft_strcat.o	\
	./ft_strncat.o	\
	./ft_memcpy.o	\
	./ft_memccpy.o	\
	./ft_memmove.o	\
	./ft_memchr.o	\
	./ft_memcmp.o	\
	./ft_strlcat.o	\
	./ft_itoa.o	\
	./ft_strsplit.o	\
	./ft_lstnew.o	\
	./ft_lstdelone.o	\

HEAD = -I *.h

TRASH = *.o		\
	*.c~		\
	Makefile~	\
	*.h~		\
	a.out		\

FLAG = -Wall -Wextra -Werror

WHICH =

all: $(NAME)

$(NAME):
	gcc $(FLAG) $(HEAD) -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
gcc:
	gcc $(FLAG) $(WHICH) -L. -lft

norme:
	Norminette $(SRC) *.h Makefile
cp:
	cp $(SRC) ../libft
clean:
	rm -f $(TRASH)

fclean: clean
	rm -f $(NAME)

re: fclean all
