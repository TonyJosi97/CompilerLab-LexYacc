alpha [a-zA-aZ]
digit [0-9]

%%
[ \t\n]
{digit}+ return NUM;
{alpha}({digit}|{alpha})* return ID;
"<=" return LE;
">=" return GE;
"==" return EQ;
"!=" return NE;
"||" return OR;
"&&" return AND;
. return yytext[0]; 
%%
