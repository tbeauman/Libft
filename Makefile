NAME=libft.a
FLAGS=-Wall -Wextra -Werror
CC=gcc
HDRS=libft.h
SRCS=ft_atoi.c ft_putendl.c ft_putstr.c ft_strcmp.c ft_strlen.c ft_strrchr.c \
	 ft_putendl_fd.c ft_putstr_fd.c ft_strcpy.c ft_strncat.c ft_putchar.c \
	 ft_putnbr.c ft_strcat.c ft_strdup.c ft_strncmp.c ft_putchar_fd.c ft_putnbr_fd.c \
	 ft_strchr.c ft_strlcat.c ft_strncpy.c ft_strstr.c ft_strnstr.c ft_isalpha.c ft_isdigit.c \
	 ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_memset.c ft_bzero.c \
	 ft_memcpy.c ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_memalloc.c ft_memdel.c \
	 ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c \
	 ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c \
	 ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_lst_putstr.c \
	 ft_sortlist.c ft_lstsplit.c ft_strrev.c ft_ministr.c ft_factorial.c ft_power.c ft_isprime.c \
	 ft_printbits.c
OBJS=$(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

%.o: %.c $(HDRS)
	$(CC) $(FLAGS) -c $<

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
