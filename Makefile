# FILES

SRCS	=	ft_printf.c ft_choose.c ft_print_ptr.c \
		ft_putstr.c ft_putnbr.c ft_putchar.c \
		ft_putunsigned.c ft_dectohex_s.c ft_dectohex_c.c \

# VARIABLES

AR = ar rcs

RM = rm -f

HEADER = header

OBJS	= $(SRCS:.c=.o)

CC		= cc

CFLAGS	= -Wall -Werror -Wextra

NAME	= libftprintf.a

# COLORS

DEF_COLOR = \e[1;39m
RESET = \e[0m
GRAY = \e[1;90m
RED = \e[1;91m
YELLOW = \e[1;93m
GREEN = \e[1;92m
BLUE = \e[1;94m
MAGENTA = \e[1;95m
CYAN = \e[1;96m
WHITE = \e[1;97m
BLINK = \e[5m

# START HERE |
#            v

all: $(HEADER) $(NAME) 

$(HEADER): 
	@echo "$(RED)███████╗████████╗  ██████╗░██████╗░██╗███╗░░██╗████████╗███████╗"
	@echo "$(RED)██╔════╝╚══██╔══╝  ██╔══██╗██╔══██╗██║████╗░██║╚══██╔══╝██╔════╝"
	@echo "$(RED)█████╗░░░░░██║░░░  ██████╔╝██████╔╝██║██╔██╗██║░░░██║░░░█████╗░░"
	@echo "$(RED)██╔══╝░░░░░██║░░░  ██╔═══╝░██╔══██╗██║██║╚████║░░░██║░░░██╔══╝░░"
	@echo "$(RED)██║░░░░░░░░██║░░░  ██║░░░░░██║░░██║██║██║░╚███║░░░██║░░░██║░░░░░"
	@echo "$(RED)╚═╝░░░░░░░░╚═╝░░░  ╚═╝░░░░░╚═╝░░╚═╝╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░░░░"

$(NAME): $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "$(GREEN)✔ $(MAGENTA)created $(CYAN)library$(MAGENTA) file!"

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "$(WHITE)· $(YELLOW)compiling file: $(BLINK)○$(RESET)"

clean:
	@$(RM) $(OBJS)
	@echo "$(WHITE)· $(RED)all object files were deleted!"

fclean: clean
	@$(RM) $(NAME)
	@echo "$(WHITE)·$(RED) library file was deleted!"

re: fclean all

.PHONY: all fclean clean re
