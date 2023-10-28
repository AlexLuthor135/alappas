SRCS		=	main.c parse_elements.c utils.c\
				utils2.c error_handle.c s_moves.c\
				r_moves.c rr_moves.c p_moves.c\
				small_moves.c main_sort.c small_moves_b.c\
				stack_values.c main_sort_utils.c

CC_FLAGS		=	-Wall -Wextra -Werror -g # -fsanitize=address -I
CC				=	gcc
SRCS_F			=	srcs/
OBJS_F			=	objs/

LIBFT = incl/libft/
PRINTF = incl/ft_printf/

OBJS		=	$(SRCS:.c=.o)
OBJS_P		=	$(addprefix $(OBJS_F), $(OBJS))
NAME		= 	push_swap

all:$(NAME)

$(OBJS_F)%.o: $(SRCS_F)%.c Makefile push_swap.h
	@mkdir -p $(OBJS_F)
	@echo "Working on: $<"
	@$(CC) $(CC_FLAGS) -O3 -c $< -o $@

$(NAME): $(OBJS_P)
	@$(MAKE) -C $(LIBFT) 
	@$(MAKE) -C $(PRINTF) 
	@$(CC) $(CC_FLAGS) -O3 $(PRINTF)/libftprintf.a $(LIBFT)/libft.a -o $(NAME) $(OBJS_P)
	@echo "OK"

clean:
	@rm -rf $(OBJS_F)
	@$(MAKE) fclean -C $(LIBFT) 
	@$(MAKE) fclean -C $(PRINTF) 

fclean:	clean
	@rm -rf $(NAME)

re:		fclean all

.PHONY:	all clean fclean re