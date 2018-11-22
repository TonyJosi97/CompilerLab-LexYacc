alpha [a-zA-aZ]
digit [0-9]

%%
[ \t\n]
switch return SWITCH;
case return CASE;
break return BREAK;
default return DEFAULT;
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
