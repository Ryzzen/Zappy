##
## EPITECH PROJECT, 2017
## Makefile
## File description:
## the makefile of the project
##

SRC_AI=

OBJ_AI=			$(SRC_AI:.c=.o)

SRC_GR=

OBJ_GR=			$(SRC_GR:.c=.o)

SRC_SV=

OBJ_SV=			$(SRC_SV:.c=.o)

CFLAGS=			-Wall -Wextra -I.

C++FLAGS=		-Wall -Wextra -I.

NAME_AI=		zappy_ai

NAME_GR=		zappy_graph

NAME_SV=		zappy_server

all:			ai graph server

ai:	$(OBJ_AI)
        cc -o $(NAME_AI) $(OBJ_AI)

ai:	$(OBJ_GR)
        cc -o $(NAME_GR) $(OBJ_GR)

ai:	$(OBJ_SV)
        cc -o $(NAME_SV) $(OBJ_SV)

clean:
        rm -f $(OBJ_AI) $(OBJ_GR) $(OBJ_SV)

fclean:		clean
        rm -f $(NAME_AI) $(NAME_GR) $(NAME_SV)

re:		fclean all

.PHONY: all clean fclean re ai