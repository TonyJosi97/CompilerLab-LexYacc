alpha [a-zA-Z]
digit [0-9]

%%

[ \t\n]
if return IF;
else return ELSE;
{digit}+ return NUM;
{alpha}({digit}|{alpha})* return ID;
. return yytext[0];

%%