%{

#include<stdio.h>
#include<stdlib.h>

%}

%token INT CHAR DOUBLE FLOAT VOID ID NUM

%%

S: T {printf("Accepted! \n"); exit(0);}
;

T: TY ID'('TY1')' '{'E'}'
;

TY: INT
    | CHAR
    | FLOAT
    | DOUBLE
    | VOID
    ;

TY1: TY1','TY1
    | TY2 ID
    | TY2 ID'='NUM
    ;

TY2: INT
    | CHAR
    | FLOAT
    | DOUBLE
    ;

E: E';'E
    | ID'='E
      | E'+'E
      | E'-'E
      | E'*'E
      | E'/'E
      | E'<'E
      | E'>'E
      | ID
      | NUM
      | ID';'
      | NUM';'
      ;

%%

#include "lex.yy.c"

main()
{
    printf("\n Enter expr: ");
    yyparse();
}