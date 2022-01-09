SRCS			=	ft_printf.c \
					ft_printf_utils.c

HED				= ft_printf.h

OBJS			= $(SRCS:.c=.o)

CC				= gcc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror

NAME			= libftprintf.a

all:			$(NAME) $(HED)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

%.o : %.c 		$(HED) 
				$(CC) $(CFLAGS) -c $< -o $@ 
				
clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

.PHONY:			all clean fclean re