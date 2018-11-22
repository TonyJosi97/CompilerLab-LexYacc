%{

#include<stdio.h>
#include<stdlib.h>

%}

%token DO WHILE NUM ID GE LE EE EQ NE
%right '=' 
%left AND OR
%left '<' '>' 
%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'

%%

S: T {printf("Accepted! \n"); exit(0);}
   ;

T: DO '{' E '}' WHILE '(' E ')' ';'
   ;

E:      E E
      | ID'='E
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
      | ID';'
      | NUM';'
      ;

%%

#include "lex.yy.c"

main()
{
    printf("\nEnter the expr: ");
    yyparse();
}