# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rlinkov <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/10 13:59:36 by rlinkov           #+#    #+#              #
#    Updated: 2019/10/29 17:14:03 by rlinkov          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
GCC			= gcc
RM			= rm -rf
NAME		= libft.a
CFLAGS		= -Wall -Wextra -Werror

SRCS			=	 ft_bzero.c  ft_isalnum.c ft_isalpha.c ft_isascii.c\
						ft_isdigit.c ft_isprint.c ft_memccpy.c ft_memchr.c ft_memcmp.c\
						ft_memcpy.c ft_memmove.c ft_memset.c ft_strlen.c ft_strchr.c ft_strrchr.c\
						ft_tolower.c ft_toupper.c ft_strncmp.c ft_atoi.c ft_strlcpy.c ft_strlcat.c\
						ft_strnstr.c ft_calloc.c ft_strdup.c ft_putchar_fd.c ft_putstr_fd.c\
						ft_putnbr_fd.c ft_putendl_fd.c ft_strmapi.c ft_substr.c ft_strjoin.c\
						ft_strtrim.c ft_split.c ft_itoa.c
SRCSBONUS		= ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c\
				  ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJECTS		= $(SRCS:.c=.o)

OBJECTSBONUS = $(SRCSBONUS:.c=.o)

all: $(NAME)

%.o: %.c
	$(GCC) -c $< -o $@ $(CFLAGS)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

bonus : $(OBJECTSBONUS)
	ar rc $(NAME) $(OBJECTSBONUS)
	ranlib $(NAME)

clean:
	$(RM) $(OBJECTS) $(OBJECTSBONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean all
