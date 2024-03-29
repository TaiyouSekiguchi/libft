# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsekiguc <tsekiguc@student.42tokyo.jp      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/20 09:45:12 by tsekiguc          #+#    #+#              #
#    Updated: 2022/07/29 20:07:52 by tsekiguc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=	libft.a
SRCS			=	ft_atoi.c\
					ft_bzero.c\
					ft_calloc.c\
					ft_int_check.c\
					ft_isalnum.c\
					ft_isalpha.c\
					ft_isascii.c\
					ft_isdigit.c\
					ft_isprint.c\
					ft_isspace.c\
					ft_itoa.c\
					ft_lstadd_back.c\
					ft_lstadd_front.c\
					ft_lstclear.c\
					ft_lstdelone.c\
					ft_lstiter.c\
					ft_lstlast.c\
					ft_lstmap.c\
					ft_lstnew.c\
					ft_lstsize.c\
					ft_memccpy.c\
					ft_memchr.c\
					ft_memcmp.c\
					ft_memcpy.c\
					ft_memmove.c\
					ft_memset.c\
					ft_putchar_fd.c\
					ft_putendl_fd.c\
					ft_putnbr_fd.c\
					ft_putstr_fd.c\
					ft_split.c\
					ft_strchr.c\
					ft_strcmp.c\
					ft_strdup.c\
					ft_strndup.c\
					ft_striteri.c\
					ft_strjoin.c\
					ft_strlcat.c\
					ft_strlcpy.c\
					ft_strlen.c\
					ft_strmapi.c\
					ft_strncmp.c\
					ft_strnstr.c\
					ft_strrchr.c\
					ft_strtrim.c\
					ft_substr.c\
					ft_tolower.c\
					ft_toupper.c
OBJS_DIR		=	objs
OBJS			=	$(addprefix $(OBJS_DIR)/, $(SRCS:.c=.o))

CC				=	gcc
CFLAGS			=	-Wall -Wextra -Werror
RM				=	rm -f

.PHONY			:	all clean fclean re

all				:	$(NAME)

$(NAME)			:	$(OBJS)
					ar rc $@ $?
					ranlib $@

$(OBJS_DIR)/%.o	:	%.c libft.h
					@[ -d $(OBJS_DIR) ]
					$(CC) $(CFLAGS) -c $< -o $@

clean			:
					$(RM) $(OBJS)

fclean			:	clean
					$(RM) $(NAME)

re				:	fclean all
