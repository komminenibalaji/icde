%{
#include <cstdio>
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int verilog_lex()
#include "verilog.y.hh"
int verilog_line_number = 1;
%}

%option noyywrap
%x COMMENT
%x ATTRIBUTE
%%

[ \t] ;

"/*"                                BEGIN(COMMENT);
<COMMENT>"*/"                       BEGIN(INITIAL);
<COMMENT>.|"\n"                     ;

"(*"                                BEGIN(ATTRIBUTE);
<ATTRIBUTE>"*)"                     BEGIN(INITIAL);
<COMMENT>.|"\n"                     ;

module    { return MODULE; }
endmodule { return ENDMODULE; }
input     { return INPUT; }
output    { return OUTPUT; }
wire      { return WIRE; }

[\;\-\+\"\(\)\*\:\,\[\]\<\>]            { return verilog_text[0]; }

\-?[0-9]+                 { verilog_lval.fval = atof(verilog_text); return NUMBER; }

[a-zA-Z0-9\_]+    { verilog_lval.sval = strdup(verilog_text); return STRING; }

\n                        { verilog_line_number++; }
. ;

%%
