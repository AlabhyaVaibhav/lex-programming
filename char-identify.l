letter [a-z A-Z]
digit [0-9]
digits {digit}+
vow [aeiouAEIOU]
vowel {vow}{{letter}}*
%%
vowel {printf("\nword starts with vowel %s",yytext);}
digits {printf("\nnumbers found %s",yytext);}
%%

int main(){
yyin = fopen("sample.c","r");
yylex();
return 0;
}
int yywrap(){
return 1;
}
