# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: asalic <asalic@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/19 14:27:17 by asalic            #+#    #+#              #
#    Updated: 2022/11/25 11:18:22 by asalic           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Wextra -Werror

COMP = cc -c $(CFLAGS)

SRC =	ft_atoi.c\
	ft_bzero.c \
	ft_calloc.c\
	ft_isalnum.c \
	ft_isalpha.c\
	ft_isascii.c \
	ft_isdigit.c\
	ft_isprint.c \
	ft_itoa.c\
	ft_memchr.c \
	ft_memcmp.c\
	ft_memcpy.c \
	ft_memmove.c\
	ft_memset.c \
	ft_putchar_fd.c\
	ft_putendl_fd.c \
	ft_putnbr_fd.c\
	ft_putstr_fd.c \
	ft_split.c\
	ft_strchr.c \
	ft_strdup.c\
	ft_striteri.c \
	ft_strjoin.c\
	ft_strlcat.c \
	ft_strlcpy.c\
	ft_strlen.c \
	ft_strmapi.c\
	ft_strncmp.c \
	ft_strnstr.c\
	ft_strrchr.c \
	ft_strtrim.c\
	ft_substr.c \
	ft_tolower.c\
	ft_toupper.c

OBJ = ${SRC:.c=.o}

SRC_BONUS = ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c
			
OBJ_BONUS = ${SRC_BONUS:.c=.o}

all : $(NAME)

$(NAME) :
	$(COMP) $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
	
bonus :
	$(COMP) $(SRC_BONUS)
	ar rc $(NAME) $(OBJ_BONUS)
	ranlib $(NAME)

clean :  
	rm -f $(OBJ)
	rm -f $(OBJ_BONUS)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : all re clean fclean