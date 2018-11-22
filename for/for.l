alpha [a-zA-Z]
digit [0-9]

%%
[ \t\n]
for return FOR;
{digit}+ return NUM;
{alpha}({digit}|{alpha})* return ID;
"<=" return GE;
">=" return LE;
"==" return EQ;
"!=" return NE;
"||" return OR;
"&&" return AND;
. return yytext[0];
%%
