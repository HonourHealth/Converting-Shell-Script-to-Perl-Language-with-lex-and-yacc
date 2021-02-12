all: yacc lex
	cc lex.yy.c y.tab.c -o deneme -lfl

yacc: onur.y
	yacc -d onur.y

lex: onur.l
	lex onur.l


