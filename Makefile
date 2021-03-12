SRCS            =   srcs/ft_strlen.s \
					srcs/ft_strcpy.s \
					srcs/ft_strcmp.s \
					srcs/ft_strdup.s \
					srcs/ft_write.s \
					srcs/ft_read.s
BONUS           =	srcs/ft_list_size_bonus.s \
					srcs/ft_list_push_front_bonus.s

OBJS            = $(SRCS:.s=.o)
BONUS_OBJS      = $(BONUS:.s=.o)
CC              = nasm
RM              = rm -f
CFLAGS          = -f macho64 -I.
NAME            = libasm.a

all: $(NAME)

%.o:%.s includes/libasm.h
	$(CC) $(CFLAGS) -o $@ -s $<

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

bonus: $(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:         all clean fclean re bonus