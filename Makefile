a5 = tetrashell modify rank check recover tetris

tetrashell: tetris.h Tetrashell.c tetris 
	gcc tetris.h Tetrashell.c -o tetrashell

modify: modify.c tetris.h
	gcc modify.c tetris.h -o modify

rank: rank.c tetris.h
	gcc rank.c tetris.h -o rank

check: check.c tetris.h verify.o
	gcc check.c tetris.h verify.o -o check

recover: recover.c tetris.h
	gcc recover.c tetris.h -o recover

tetris: tetris.c
	gcc tetris.c -o tetris -lncurses

