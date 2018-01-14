%{
#include <cstdio>
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int def_lex()
#include "def.y.hh"
int def_line_number = 1;
%}

%option noyywrap

%%

[ \t] ;
^#.*  ;
NAMESCASESENSITIVE  { return NAMESCASESENSITIVE; }
NONDEFAULTRULE      { return NONDEFAULTRULE; }
DIVIDERCHAR         { return DIVIDERCHAR; }
BUSBITCHARS         { return BUSBITCHARS; }
SPECIALNETS         { return SPECIALNETS; }
COMPONENTS          { return COMPONENTS; }
PROPERTY            { return PROPERTY; }
DISTANCE            { return DISTANCE; }
TRISTATE            { return TRISTATE; }
DIEAREA             { return DIEAREA; }
MICRONS             { return MICRONS; }
VERSION             { return VERSION; }
POLYGON             { return POLYGON; }
ROUTED              { return ROUTED; }
PLACED              { return PLACED; }
FIXED               { return FIXED; }
DESIGN              { return DESIGN; }
TRACKS              { return TRACKS; }
OUTPUT              { return OUTPUT; }
INPUT               { return INPUT; }
INOUT               { return INOUT; }
LAYER               { return LAYER; }
UNITS               { return UNITS; }
RECT                { return RECT; }
STEP                { return STEP; }
NETS                { return NETS; }
PINS                { return PINS; }
PIN                 { return PIN; }
NET                 { return NET; }
NEW                 { return NEW; }
END                 { return END; }
OFF                 { return OFF; }
ON                  { return ON; }
DO                  { return DO; }

[\;\-\+\"\(\)\*]            { return def_text[0]; }
[\[\]\<\>\/\\]            { def_lval.cval = def_text[0]; return CHAR; }

\-?[0-9]+\.[0-9]+e-[0-9]+ { def_lval.fval = atof(def_text); return NUMBER; }
\-?[0-9]+e-[0-9]+         { def_lval.fval = atof(def_text); return NUMBER; }
\-?[0-9]+\.[0-9]+         { def_lval.fval = atof(def_text); return NUMBER; }
\-?[0-9]+                 { def_lval.fval = atof(def_text); return NUMBER; }

[a-zA-Z0-9\_\[\][<\>]+    { def_lval.sval = strdup(def_text); return STRING; }

\n                        { def_line_number++; }
. ;

%%
