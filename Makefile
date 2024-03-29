# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phemsi-a <phemsi-a@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/06 19:52:46 by phemsi-a          #+#    #+#              #
#    Updated: 2021/07/30 20:31:23 by phemsi-a         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = clang
CFLAGS = -Wall -Wextra -Werror

PTF_SRC = ./ft_printf/
PTF_PRINT = ./ft_printf/parsing_identifiers/print_

FILES = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putnbr_unsigned.c ft_itoa_hex.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c ft_dlstnew.c ft_dlstadd_front.c ft_dlstsize.c ft_dlstlast.c ft_dlstadd_back.c ft_dlstdelone.c ft_dlstclear.c ft_dlstiter.c ft_dlstmap.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c ft_strequ.c ft_strnequ.c ft_strclr.c ft_isspace.c ft_isblank.c ft_isxdigit.c ft_countdigit.c ft_isnegative.c ft_numlen.c get_next_line.c get_next_line_multfd.c ft_isupper.c ft_free_and_null.c ft_strcmp.c variadic_strjoin.c
PTF_FILES = $(PTF_SRC)ft_printf.c $(PTF_SRC)flags_parser.c $(PTF_PRINT)char.c $(PTF_PRINT)string.c $(PTF_PRINT)integer.c $(PTF_PRINT)hex.c
OBJECTS = $(FILES:.c=.o) ft_printf.o flags_parser.o print_char.o print_string.o print_integer.o print_hex.o

all: $(NAME)

$(NAME): $(OBJECTS)
	ar -rcs $(NAME) $(OBJECTS)
	
$(OBJECTS): $(FILES) $(PTF_FILES)
	@$(CC) $(FLAGS) -c $(FILES) $(PTF_FILES)

clean:
	@$(RM) $(OBJECTS)

fclean: clean
	@$(RM) $(NAME)

re: fclean all 

.PHONY: all clean fclean re 
