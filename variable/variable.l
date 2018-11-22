alpha [a-zA-Z]
digit [0-9]

%%

[ \t\n]
int return INT;
char return CHAR;
float return FLOAT;
double return DOUBLE;
{digit}+ return NUM;
{alpha}({alpha}|{digit})* return ID;
"<="    return LE;
">="    return GE;
"=="    return EQ;
"!="    return NE;
"||"    return OR;
"&&"    return AND;
.    return yytext[0];

%%
