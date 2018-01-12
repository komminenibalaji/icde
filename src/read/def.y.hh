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

#ifndef YY_DEF_DEF_Y_HH_INCLUDED
# define YY_DEF_DEF_Y_HH_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int def_debug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    CHAR = 258,
    NUMBER = 259,
    STRING = 260,
    DESIGN = 261,
    VERSION = 262,
    NAMESCASESENSITIVE = 263,
    DIVIDERCHAR = 264,
    BUSBITCHARS = 265,
    DIEAREA = 266,
    UNITS = 267,
    DISTANCE = 268,
    MICRONS = 269,
    NONDEFAULTRULE = 270,
    TRACKS = 271,
    STEP = 272,
    LAYER = 273,
    DO = 274,
    COMPONENTS = 275,
    PLACED = 276,
    FIXED = 277,
    UNPLACED = 278,
    PINS = 279,
    NETS = 280,
    ROUTED = 281,
    NEW = 282,
    PIN = 283,
    SPECIALNETS = 284,
    RECT = 285,
    POLYGON = 286,
    SOURCE = 287,
    DIRECTION = 288,
    INPUT = 289,
    OUTPUT = 290,
    TRISTATE = 291,
    INOUT = 292,
    PROPERTYDEFINITIONS = 293,
    PROPERTY = 294,
    END = 295,
    ON = 296,
    OFF = 297,
    TYPE = 298,
    USE = 299
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 19 "def.y" /* yacc.c:1909  */

  float fval;
  char cval;
  char *sval;

#line 105 "def.y.hh" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE def_lval;

int def_parse (void);

#endif /* !YY_DEF_DEF_Y_HH_INCLUDED  */
