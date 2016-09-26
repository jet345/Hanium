%{
#include <stdio.h>
%}
%token NUMBER
%%
Exp : Exp '+' NUMBER { printf("rule 1\n"); }
| NUMBER { printf("rule 2\n"); }
;
%%
int main() { yyparse(); return 0; }
int yyerror(const char *msg) { fputs(msg, stderr); }
