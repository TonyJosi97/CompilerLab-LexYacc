%{

#include<stdio.h>
#include<stdlib.h>

%}

%token NUM

%%

S: EXP {$$=$1; printf("Value: %d \n", $$); exit(0);}
;

EXP: EXP'+'EXP {$$ = $1 + $3;}
    |EXP'-'EXP {$$ = $1 - $3;}
    |EXP'*'EXP {$$ = $1 * $3;}
    |EXP'/'EXP {$$ = $1 / $3;}
    |NUM {$$ = $1;}
    ;
    

%%

#include "lex.yy.c"

main()
{
    printf("\nEnter expr: ");
    yyparse();
}