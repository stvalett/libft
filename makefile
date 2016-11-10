# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: stvalett <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/07 22:26:34 by stvalett          #+#    #+#              #
#    Updated: 2016/11/07 22:44:27 by stvalett         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

CFGLAS = -wall -Wextra -Werror

SRCS = ft_memset.c\
	   ft_memcpy.c\
	   ft_memccpy.c\
	   ft_memchr.c\
	   ft_bzero.c\
	   ft_memcmp.c\
	   ft_strcmp.c\
	   ft_strncmp.c\
	   ft_isalpha.c\
	   ft_isdigit.c\
	   ft_isalnum.c\
	   ft_isascii.c\
	   ft_toupper.c\
	   ft_tolower.c\
	   ft_atoi.c\
	   ft_strlen.c\
	   ft_putstr.c\
	   ft_putchar.c\
	   ft_strstr.c\
	   ft_strnstr.c\
	   ft_strdup.c\
	   ft_strcpy.c\
	   ft_strncpy.c\
	   ft_strcat.c\
	   ft_strncat.c\
	   ft_strchr.c\
	   ft_strrchr.c

OBJ = ft_memset.o\
	   ft_memcpy.o\
	   ft_memccpy.o\
	   ft_memchr.o\
	   ft_bzero.o\
	   ft_memcmp.o\
	   ft_strcmp.o\
	   ft_strncmp.o\
	   ft_isalpha.o\
	   ft_isdigit.o\
	   ft_isalnum.o\
	   ft_isascii.o\
	   ft_toupper.o\
	   ft_tolower.o\
	   ft_atoi.o\
	   ft_strlen.o\
	   ft_putstr.o\
	   ft_putchar.o\
	   ft_strstr.o\
	   ft_strnstr.o\
	   ft_strdup.o\
	   ft_strcpy.o\
	   ft_strncpy.o\
	   ft_strcat.o\
	   ft_strncat.o\
	   ft_strchr.o\
	   ft_strrchr.o

INCLUDES = -Ilibft

all : $(NAME)

$(NAME) :
	$(CC) -c $(CFLAGS) $(SRCS) $(INCLUDES)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean :
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re : all
