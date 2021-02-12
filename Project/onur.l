%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
int linenumber = 1;
int tabnum = 0;
%}
%%
"#!/bin/sh" return PREDIRECTIVE;
"for" {yylval.string = strdup(yytext);return FOR;}
"in" {yylval.string = strdup(yytext);return IN;}
"if" {yylval.string = strdup(yytext);return IF;}
"then" return THEN;
"fi" return FI;
"while" {yylval.string = strdup(yytext);return WHILE;}
"do" return DO;
"done" return DONE;
"echo" return ECHO;
"else" {yylval.string = strdup(yytext);return ELSE;}
"elif" {yylval.string = strdup(yytext);return ELIF;}
"=" {yylval.string = strdup(yytext);return EQUAL_SYMBOL;}
":" return COLON;
";" {yylval.string = strdup(yytext);return SEMICOLON;}
"!=" {yylval.string = strdup(yytext);return NOT_EQUAL;}
"[ " {yylval.string = strdup(yytext);return OPEN_BARACKETS;}
" ]" {yylval.string = strdup(yytext);return CLOSE_BARACKETS;} 
"-" {yylval.string = strdup(yytext);return MINUS;}
"+" {yylval.string = strdup(yytext);return PLUS;}
"*" {yylval.string = strdup(yytext);return MULT;}
"$" {yylval.string = strdup(yytext);return VARIABLE_PREIDENTIFIER;}
"(" {yylval.string = strdup(yytext);return OPEN_PARANTHESIS;}
")" {yylval.string = strdup(yytext);return CLOSE_PARANTHESIS;}
"/" {yylval.string = strdup(yytext);return SLASH;}
"-le" return LESSOREQUAL;
"-eq" return EQUAL;
"-ne" return NOTEQUAL;
"-lt" return LESSTHAN;
"-gt" return GREATERTHAN;
"-ge" return GREATEROREQUAL;
([0-9]+\.[0-9]+) {yylval.string = strdup(yytext);return DOUBLEVAL;}
[A-Za-z][A-Za-z0-9_]* {yylval.string = strdup(yytext);return IDENTIFIER;}
[0-9]+ {yylval.string = strdup(yytext);return INTEGER;}
("# ".*) {yylval.string = strdup(yytext);return COMMENT;}
(\".*\")|('.*') {yylval.string = strdup(yytext);return STRING_LITERAL;}
\n	{linenumber++;} 
[\t ]+	{tabnum++;}
%%




