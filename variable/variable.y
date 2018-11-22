%{

#include<stdio.h>
#include<stdlib.h>

%}

%token INT FLOAT CHAR DOUBLE LE GE NE EQ AND OR ID NUM

%%

S: T {printf("Accepted! \n"); exit(0);}
   ;

T: TY E';'
   ;

TY:   INT
    | FLOAT
    | CHAR
    | DOUBLE
    ;

E:    E','E
     |ID'='E
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
      | ID
      | NUM
      ;

%%

#include "lex.yy.c"

main()
{

    printf("\n Enter expr: ");
    yyparse();

}