# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phemsi-a <phemsi-a@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/06 19:52:46 by phemsi-a          #+#    #+#              #
#    Updated: 2021/02/12 19:34:17 by phemsi-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Makefile which will compile your
#source files to the required output with the flags -Wall, -Wextra and -Werror, and
#your Makefile must not relink.
#• Your Makefile must at least contain the rules $(NAME), all, clean, fclean and
#re.
#• To turn in bonuses to your project, you must include a rule bonus to your Makefile,
#which will add all the various headers, librairies or functions that are forbidden on
#the main part of the project. Bonuses must be in a different file _bonus.{c/h}.
#Mandatory and bonus part evaluation is done separately.

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
FILES = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_atoi.c ft_isspace.c ft_strlen.c ft_strncmp.c ft_strequ.c ft_strnequ.c ft_putendl.c ft_strclr.c ft_substr.c ft_strtrim.c ft_strjoin.c ft_strdup.c ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strlcpy.c ft_strlcat.c ft_memset.c ft_memcpy.c ft_memccpy.c ft_memcmp.c ft_memchr.c ft_calloc.c ft_isblank.c ft_isxdigit.c ft_countdigit.c ft_itoa.c ft_isnegative.c ft_memmove.c ft_bzero.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putchar.c ft_putstr.c ft_putnbr.c ft_strmapi.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c ft_split.c
#! ATENÇÃO! BONUS ESTÃO AQUI PQ NAO TA ROLANDO A REGRA! ARRUMAR! 
OBJECTS = $(FILES:.c=.o)
BONUS = ft_lstnew.c
BONUS_OBJECTS = $(BONUS:.c=.o)
RE = rm -f

all: $(NAME)

$(NAME): $(OBJECTS)
	ar -rcs $(NAME) $(OBJECTS)
	
$(OBJECTS): $(FILES)
	$(CC) $(FLAGS) -c $(FILES)

bonus: $(BONUS OBJECTS)
	ar -rcs $(NAME) $(BONUS_OBJECTS)

$(BONUS_OBJECTS): $(BONUS)
	$(CC) $(FLAGS) -c $(BONUS)

clean:
	$(RM) $(OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	$(RM) $(NAME)

re: fclean all 

.PHONY: all clean fclean re 
