/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_LEF_LEF_Y_HH_INCLUDED
# define YY_LEF_LEF_Y_HH_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int lef_debug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    CHAR = 258,
    NUMBER = 259,
    STRING = 260,
    VERSION = 261,
    NAMESCASESENSITIVE = 262,
    DIVIDERCHAR = 263,
    BUSBITCHARS = 264,
    UNITS = 265,
    DATABASE = 266,
    MICRONS = 267,
    PROPERTYDEFINITIONS = 268,
    PROPERTY = 269,
    USEMINSPACING = 270,
    MANUFACTURINGGRID = 271,
    PIN = 272,
    OBS = 273,
    ON = 274,
    OFF = 275,
    CLEARANCEMEASURE = 276,
    END = 277,
    LIBRARY = 278,
    DIRECTION = 279,
    TYPE = 280,
    LAYER = 281,
    MASTERSLICE = 282,
    PITCH = 283,
    ROUTING = 284,
    EDGECAPACITANCE = 285,
    RESISTANCE = 286,
    CAPACITANCE = 287,
    CUT = 288,
    SPACING = 289,
    WIDTH = 290,
    HORIZONTAL = 291,
    VERTICAL = 292,
    VIA = 293,
    RECT = 294,
    DEFAULT = 295,
    VIARULE = 296,
    METALOVERHANG = 297,
    GENERATE = 298,
    OVERHANG = 299,
    BY = 300,
    TO = 301,
    SITE = 302,
    SIZE = 303,
    SYMMETRY = 304,
    CLASS = 305,
    SHAPE = 306,
    PORT = 307,
    FOREIGN = 308,
    MACRO = 309,
    USE = 310,
    ORIGIN = 311,
    SOURCE = 312,
    INPUT = 313,
    OUTPUT = 314,
    TRISTATE = 315,
    INOUT = 316
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 19 "lef.y" /* yacc.c:1909  */

  float fval;
  char cval;
  char *sval;

#line 122 "lef.y.hh" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE lef_lval;

int lef_parse (void);

#endif /* !YY_LEF_LEF_Y_HH_INCLUDED  */
