%{
#include <cstdio>
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int lef_lex()
#include "lef.y.hh"
int lef_line_number = 1;
%}

%option noyywrap

%%

[ \t] ;
^#.*  ;
PROPERTYDEFINITIONS { return PROPERTYDEFINITIONS; }
NAMESCASESENSITIVE  { return NAMESCASESENSITIVE; }
MANUFACTURINGGRID   { return MANUFACTURINGGRID; }
CLEARANCEMEASURE    { return CLEARANCEMEASURE; }
USEMINSPACING       { return USEMINSPACING; }
DIVIDERCHAR         { return DIVIDERCHAR; }
BUSBITCHARS         { return BUSBITCHARS; }
DATABASE            { return DATABASE; }
PROPERTY            { return PROPERTY; }
MICRONS             { return MICRONS; }
VERSION             { return VERSION; }
LAYER               { return LAYER; }
UNITS               { return UNITS; }
MASTERSLICE         { return MASTERSLICE; }
ROUTING             { return ROUTING; }
EDGECAPACITANCE     { return EDGECAPACITANCE; }
ENCLOSURE           { return ENCLOSURE; }
TYPE                { return TYPE; }
PIN                 { return PIN; }
OBS                 { return OBS; }
END                 { return END; }
OFF                 { return OFF; }
ON                  { return ON; }
CUT                 { return CUT; }
SPACING             { return SPACING; }
DIRECTION           { return DIRECTION; } 
HORIZONTAL          { return HORIZONTAL; }
VERTICAL            { return VERTICAL; }
PITCH               { return PITCH; }
WIDTH               { return WIDTH; }
RESISTANCE          { return RESISTANCE; }
CAPACITANCE         { return CAPACITANCE; }
DEFAULT             { return DEFAULT; }
RECT                { return RECT; }
VIARULE             { return VIARULE; }
VIA                 { return VIA; }
METALOVERHANG       { return METALOVERHANG; }
GENERATE            { return GENERATE; }
OVERHANG            { return OVERHANG; }
SITE                { return SITE; }
SIZE                { return SIZE; }
CLASS               { return CLASS; }
SYMMETRY            { return SYMMETRY; }
MACRO               { return MACRO; }
FOREIGN             { return FOREIGN; }
ORIGIN              { return ORIGIN; }
USE                 { return USE; }
SHAPE               { return SHAPE; }
PORT                { return PORT; }
INPUT               { return INPUT; }
OUTPUT              { return OUTPUT; }
INOUT               { return INOUT; }
TRISTATE            { return TRISTATE; }
LIBRARY             { return LIBRARY; }
BY                  { return BY; }
TO                  { return TO; }

[\;\-\+\"\(\)]            { return lef_text[0]; }
[\[\]\<\>\/\\]            { lef_lval.cval = lef_text[0]; return CHAR; }

\-?[0-9]+\.[0-9]+e-[0-9]+ { lef_lval.fval = atof(lef_text); return NUMBER; }
\-?[0-9]+e-[0-9]+         { lef_lval.fval = atof(lef_text); return NUMBER; }
\-?[0-9]+\.[0-9]+         { lef_lval.fval = atof(lef_text); return NUMBER; }
\-?[0-9]+                 { lef_lval.fval = atof(lef_text); return NUMBER; }

[a-zA-Z0-9\_]+            { lef_lval.sval = strdup(lef_text); return STRING; }

\n                        { lef_line_number++; }
. ;

%%
