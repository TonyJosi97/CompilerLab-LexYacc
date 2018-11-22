alpha [a-zA-Z]
digit [0-9]

%%

[ \t\n]
int return INT;
char return CHAR;
void return VOID;
float return FLOAT;
double return DOUBLE;
{digit}+ return NUM;
{alpha}({digit}|{alpha})* return ID;
. return yytext[0];

%%