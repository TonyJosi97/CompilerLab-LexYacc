%{
#include<stdio.h>
#include<stdlib.h>
%}

%token ID NUM GE LE EQ NE AND OR
%right '='
%left AND OR
%left '<' '>' LE GE EE NE
%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'

%%

S      : T {printf("Accepted\n\n"); exit(0);}
       ;

T      : ID'='E';'
       ;

E      : E'+'E
       | E'-'E
       | E'*'E
       | E'/'E
       | '('E')'
       | NUM
       | ID
       ;

%%

#include "lex.yy.c"

main()
{
    printf("\n Enter the Expression: ");
    yyparse();
}