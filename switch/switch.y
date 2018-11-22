%{
#include<stdio.h>
#include<stdlib.h>
void yyerror(char *);
%}

%token ID SWITCH CASE BREAK DEFAULT NUM GE LE EQ NE AND OR
%right '='
%left AND OR
%left '<' '>' LE GE EE NE
%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'

%%

S   
    : ST { printf("Accepted Input\n\n"); exit(0); }
    ;

ST
    : SWITCH'('ID')''{'C'}'
    ;

C
    : C C
    | C B
    | D
    | CASE NUM':'E';'
    ;

B
    : BREAK';'
    ;

D
    : DEFAULT':' E';'
    ;

E
    : ID '=' E
    | E '+' E
    | E '-' E
    | E '*' E
    | E '/' E
    | E '>' E
    | E '<' E
    | E AND E
    | E OR E
    | E LE E
    | E GE E
    | E NE E
    | E EQ E
    | NUM
    | ID
    ;

%%

#include "lex.yy.c"

void yyerror()
{
    printf("Hi ERROR");
    exit(0);
}

main()
{
    printf("\n Enter the Expression: ");
    yyparse();
}