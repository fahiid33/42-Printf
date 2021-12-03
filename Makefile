SRC=ft_printf.c\
	ft_putnbr.c\
	ft_putunsigned.c\
	ft_putstr.c\
	ft_putnbrd.c\
	ft_putchar.c

OBJ=ft_printf.o\
	ft_putnbr.o\
	ft_putunsigned.o\
	ft_putnbrd.o\
	ft_putstr.o\
	ft_putchar.o

CC=gcc -Wall -Wextra -Werror -c

NAME=libftprintf.a

all:$(NAME)

$(NAME):$(OBJ)
	$(CC) $(SRC)
	ar rc $(NAME) $(OBJ)

clean: 
	rm -rf $(OBJ)

fclean:clean
	rm -rf $(NAME)

re : fclean all