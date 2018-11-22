%{
#include<stdio.h>
#include<stdlib.h>
%}

%token ID NUM FOR LE GE EQ NE OR AND
%right '='
%left AND OR
%left '<' '>' LE GE EQ NE
%left '+''-'
%left '*''/'
%right UMINUS
%left '!'



%%
S       : ST {printf("Input accepted.\n");exit(0);}
        ;

ST		: FOR '('E ';' F ';' E ')' '{' E '}'
		;

E		: ID'='E
    	| E'+'E
    	| E'-'E
    	| E'*'E
    	| E'/'E
    	| E'<'E
    	| E'>'E
    	| E LE E
    	| E GE E
    	| E EQ E
    	| E NE E
    	| E OR E
    	| E AND E
		| ID';'
    	| NUM';'
    	| ID
    	| NUM
    	;

F	: F'<'F
    	| F'>'F
    	| F LE F
    	| F GE F
    	| F EQ F
    	| F NE F
    	| F OR F
    	| F AND F
    	| ID
    	| NUM
		|
    	;

%%

#include "lex.yy.c"

main()
{
printf("Enter the exp: ");
yyparse();
}