%{

#include<stdio.h>
#include<stdlib.h>

%}

%token IF ELSE ID NUM

%%

S: T {printf("\n Accepted!\n"); exit(0);}
;

T: IF'('E')''{'E'}'
    | IF'('E')''{'E'}' ELSE'{'E'}'
    ;

E: E: E';'E
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
    printf("Enter expr: ");
    yyparse();
}