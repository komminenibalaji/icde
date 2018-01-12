/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.0.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1


/* Substitute the variable and function names.  */
#define yyparse         def_parse
#define yylex           def_lex
#define yyerror         def_error
#define yydebug         def_debug
#define yynerrs         def_nerrs

#define yylval          def_lval
#define yychar          def_char

/* Copy the first part of user declarations.  */
#line 1 "def.y" /* yacc.c:339  */


#include <def.h>

#define YYDEBUG 1
#define YYERROR_VERBOSE 1

using namespace std;

// stuff from flex that bison needs to know about:
extern "C" int def_lex();
extern "C" int def_parse();
extern "C" FILE *def_in;
extern int def_line_number; 
void def_error(const char *s);


#line 92 "def.y.cc" /* yacc.c:339  */

# ifndef YY_NULLPTR
#  if defined __cplusplus && 201103L <= __cplusplus
#   define YY_NULLPTR nullptr
#  else
#   define YY_NULLPTR 0
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 1
#endif

/* In a future release of Bison, this section will be replaced
   by #include "def.y.hh".  */
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
#line 19 "def.y" /* yacc.c:355  */

  float fval;
  char cval;
  char *sval;

#line 183 "def.y.cc" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE def_lval;

int def_parse (void);

#endif /* !YY_DEF_DEF_Y_HH_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 200 "def.y.cc" /* yacc.c:358  */

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

#if !defined _Noreturn \
     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
# if defined _MSC_VER && 1200 <= _MSC_VER
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  44
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   188

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  52
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  58
/* YYNRULES -- Number of rules.  */
#define YYNRULES  110
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  209

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   299

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,    46,     2,     2,     2,     2,     2,
      49,    50,    51,    48,     2,    47,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    45,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    50,    50,    55,    56,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    75,    79,    90,
      94,    98,   102,   107,   119,   124,   123,   130,   131,   132,
     137,   136,   148,   149,   150,   154,   164,   166,   163,   170,
     171,   172,   176,   180,   182,   179,   186,   187,   188,   193,
     192,   198,   199,   200,   203,   204,   205,   209,   210,   214,
     214,   215,   216,   216,   217,   222,   221,   243,   244,   257,
     262,   264,   261,   268,   269,   270,   274,   278,   279,   280,
     284,   285,   286,   287,   288,   292,   293,   297,   301,   302,
     306,   307,   311,   312,   315,   316,   317,   321,   322,   325,
     326,   327,   328,   329,   333,   335,   340,   341,   345,   350,
     351
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 1
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "CHAR", "NUMBER", "STRING", "DESIGN",
  "VERSION", "NAMESCASESENSITIVE", "DIVIDERCHAR", "BUSBITCHARS", "DIEAREA",
  "UNITS", "DISTANCE", "MICRONS", "NONDEFAULTRULE", "TRACKS", "STEP",
  "LAYER", "DO", "COMPONENTS", "PLACED", "FIXED", "UNPLACED", "PINS",
  "NETS", "ROUTED", "NEW", "PIN", "SPECIALNETS", "RECT", "POLYGON",
  "SOURCE", "DIRECTION", "INPUT", "OUTPUT", "TRISTATE", "INOUT",
  "PROPERTYDEFINITIONS", "PROPERTY", "END", "ON", "OFF", "TYPE", "USE",
  "';'", "'\"'", "'-'", "'+'", "'('", "')'", "'*'", "$accept", "def",
  "rules", "rule", "version", "design", "namescasesensitive",
  "busbitchars", "dividechar", "units", "diearea", "tracks",
  "components_section", "$@1", "components", "component", "$@2",
  "component_properties", "component_property", "pins_section", "$@3",
  "$@4", "pins", "pin", "nets_section", "$@5", "$@6", "nets", "net", "$@7",
  "net_properties", "net_property", "net_routes", "net_route_shapes",
  "$@8", "$@9", "net_route_shape", "$@10", "net_via",
  "specialnets_section", "$@11", "$@12", "specialnets", "specialnet",
  "specialnet_properties", "specialnet_property", "specialnet_routes",
  "specialnet_route", "specialnet_route_shapes", "specialnet_route_shape",
  "net_route_status", "net_pins", "net_pin", "routing_points",
  "routing_point", "points", "point", "boolean", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,    59,    34,    45,    43,    40,
      41,    42
};
# endif

#define YYPACT_NINF -177

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-177)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      27,    16,    25,   -37,    30,    45,    11,    56,    66,    79,
      88,    89,    90,    95,     2,  -177,  -177,  -177,  -177,  -177,
    -177,  -177,  -177,  -177,  -177,  -177,  -177,  -177,    51,    53,
    -177,  -177,    54,    94,    96,    98,    23,  -177,    86,    99,
      59,    60,    62,    63,  -177,   103,  -177,  -177,  -177,  -177,
      64,    65,   108,  -177,  -177,   109,    97,  -177,  -177,  -177,
    -177,  -177,    69,    70,    67,    73,   115,    74,    75,    76,
      77,  -177,  -177,  -177,  -177,   110,   120,   -15,  -177,   121,
      75,  -177,   123,    76,  -177,   124,    77,  -177,   116,   126,
     112,  -177,  -177,    93,  -177,  -177,   100,  -177,    85,   101,
    -177,   117,  -177,  -177,   119,    85,   114,    12,    37,  -177,
     122,   139,   104,  -177,    39,  -177,   140,   141,    31,    32,
    -177,  -177,   113,   128,    34,    44,    36,   107,   111,  -177,
    -177,   148,   149,   154,   155,  -177,    52,  -177,    14,  -177,
      31,  -177,    11,  -177,  -177,   128,   157,  -177,    18,  -177,
      44,  -177,  -177,    11,    11,  -177,  -177,  -177,   159,   161,
      14,  -177,  -177,   162,  -177,  -177,    11,  -177,    18,    19,
    -177,  -177,    11,    11,    11,   160,  -177,  -177,   125,   163,
      19,  -177,  -177,   125,    11,    -3,   125,  -177,  -177,  -177,
     163,     1,   125,    -2,   165,   166,  -177,  -177,  -177,   167,
    -177,     1,   127,   129,  -177,  -177,  -177,  -177,  -177
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     4,     5,     9,     6,     7,
       8,    10,    11,    12,    13,    14,    15,    16,     0,     0,
     109,   110,     0,     0,     0,     0,     0,   107,     0,     0,
       0,     0,     0,     0,     1,     0,     3,    18,    17,    19,
       0,     0,     0,    23,   106,     0,     0,    25,    36,    43,
      70,     2,     0,     0,     0,     0,     0,    27,    39,    46,
      73,    21,    20,   108,    22,     0,     0,     0,    29,     0,
      37,    41,     0,    44,    48,     0,    71,    75,     0,     0,
       0,    28,    42,     0,    40,    49,     0,    47,    94,     0,
      74,     0,    30,    26,     0,    94,     0,     0,    77,    96,
       0,     0,    32,    38,    51,    45,     0,     0,     0,     0,
      95,    72,     0,     0,     0,    54,     0,     0,     0,    92,
      93,     0,     0,     0,     0,    79,    84,    86,     0,    76,
       0,    24,     0,    34,    31,     0,     0,    53,     0,    50,
      54,    97,    98,     0,     0,    81,    80,    85,     0,     0,
      87,    89,    78,     0,    33,    55,     0,    62,    56,    58,
      64,    52,    83,    82,     0,     0,    88,    35,    99,     0,
      57,    59,    61,    99,     0,     0,    65,   102,   103,    63,
       0,    67,    99,     0,     0,    67,   101,   100,    60,    68,
      91,    67,     0,     0,    66,    69,    90,   104,   105
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -177,  -177,  -177,   156,  -177,  -177,  -177,  -177,  -177,  -177,
    -177,  -177,  -177,  -177,  -177,   105,  -177,  -177,    28,  -177,
    -177,  -177,  -177,   106,  -177,  -177,  -177,  -177,    92,  -177,
    -177,    26,  -177,    10,  -177,  -177,  -125,  -177,  -137,  -177,
    -177,  -177,  -177,   102,  -177,    40,  -177,    47,  -177,    21,
    -122,    80,   -41,  -176,  -171,   -64,   -36,  -177
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    67,    77,    78,   112,   124,   143,    25,
      68,    93,    80,    81,    26,    69,    96,    83,    84,   105,
     126,   147,   168,   169,   190,   179,   170,   195,   200,    27,
      70,    99,    86,    87,   119,   135,   136,   137,   160,   161,
     138,   108,   109,   186,   187,    36,    37,    32
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      54,   193,    64,   148,    30,    31,   199,   191,     1,     2,
       3,     4,     5,     6,     7,   196,   201,   116,     8,   158,
     196,    28,     9,   166,   166,    90,    10,    11,   148,    29,
     196,    12,    76,     1,     2,     3,     4,     5,     6,     7,
     117,   159,    45,     8,   182,   167,   181,     9,   194,   202,
     185,    10,    11,   129,   189,   182,    12,   130,   204,   146,
      35,   131,   132,   133,   206,   198,   129,   120,    53,    38,
     130,    39,    35,   120,   129,   134,    33,   139,   130,   144,
     140,   149,   145,    40,   150,   118,   107,   125,   107,   172,
     173,    34,    41,    42,    43,    44,    47,    50,    48,    49,
      55,    51,    52,    56,    57,    58,   163,    59,    60,    61,
      62,    63,    64,    65,    71,    72,    66,    73,    74,    75,
     101,    76,    79,    82,    85,    89,    92,    88,    95,    98,
     178,   102,   103,   104,   107,   111,    54,    54,   183,   115,
     106,   110,   188,   113,   122,   127,   128,   188,   192,   142,
     197,   121,   123,   153,   154,   197,   188,   151,   141,   155,
     156,   152,   165,   174,   184,   197,   175,   177,   166,   203,
      46,   199,   205,   164,   185,    97,   171,   207,   180,   208,
     162,   176,    91,   157,     0,   114,    94,     0,   100
};

static const yytype_int16 yycheck[] =
{
      36,     4,     4,   125,    41,    42,     5,   183,     6,     7,
       8,     9,    10,    11,    12,   186,   192,     5,    16,     5,
     191,     5,    20,     5,     5,    40,    24,    25,   150,     4,
     201,    29,    47,     6,     7,     8,     9,    10,    11,    12,
      28,    27,    40,    16,   169,    27,    27,    20,    51,    51,
      49,    24,    25,    22,   179,   180,    29,    26,   195,    15,
      49,    30,    31,    32,   201,   190,    22,   108,    45,    13,
      26,     5,    49,   114,    22,    44,    46,    45,    26,    45,
      48,    45,    48,     4,    48,    48,    49,    48,    49,   153,
     154,    46,     4,     4,     4,     0,    45,     3,    45,    45,
      14,     5,     4,     4,    45,    45,   142,    45,    45,     6,
      46,    46,     4,     4,    45,    45,    19,    50,    45,     4,
       4,    47,    47,    47,    47,     5,     5,    17,     5,     5,
     166,     5,    20,    40,    49,    18,   172,   173,   174,    25,
      40,    40,   178,    24,     5,     5,     5,   183,   184,    21,
     186,    29,    48,     5,     5,   191,   192,    50,    45,     5,
       5,    50,     5,     4,     4,   201,     5,     5,     5,     4,
      14,     5,     5,   145,    49,    83,   150,    50,   168,    50,
     140,   160,    77,   136,    -1,   105,    80,    -1,    86
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     6,     7,     8,     9,    10,    11,    12,    16,    20,
      24,    25,    29,    53,    54,    55,    56,    57,    58,    59,
      60,    61,    62,    63,    64,    71,    76,    91,     5,     4,
      41,    42,   109,    46,    46,    49,   107,   108,    13,     5,
       4,     4,     4,     4,     0,    40,    55,    45,    45,    45,
       3,     5,     4,    45,   108,    14,     4,    45,    45,    45,
      45,     6,    46,    46,     4,     4,    19,    65,    72,    77,
      92,    45,    45,    50,    45,     4,    47,    66,    67,    47,
      74,    75,    47,    79,    80,    47,    94,    95,    17,     5,
      40,    67,     5,    73,    75,     5,    78,    80,     5,    93,
      95,     4,     5,    20,    40,    81,    40,    49,   103,   104,
      40,    18,    68,    24,   103,    25,     5,    28,    48,    96,
     104,    29,     5,    48,    69,    48,    82,     5,     5,    22,
      26,    30,    31,    32,    44,    97,    98,    99,   102,    45,
      48,    45,    21,    70,    45,    48,    15,    83,   102,    45,
      48,    50,    50,     5,     5,     5,     5,    99,     5,    27,
     100,   101,    97,   108,    70,     5,     5,    27,    84,    85,
      88,    83,   107,   107,     4,     5,   101,     5,   108,    87,
      85,    27,    88,   108,     4,    49,   105,   106,   108,    88,
      86,   105,   108,     4,    51,    89,   106,   108,    88,     5,
      90,   105,    51,     4,    90,     5,    90,    50,    50
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    52,    53,    54,    54,    55,    55,    55,    55,    55,
      55,    55,    55,    55,    55,    55,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    65,    64,    66,    66,    66,
      68,    67,    69,    69,    69,    70,    72,    73,    71,    74,
      74,    74,    75,    77,    78,    76,    79,    79,    79,    81,
      80,    82,    82,    82,    83,    83,    83,    84,    84,    86,
      85,    85,    87,    85,    85,    89,    88,    90,    90,    90,
      92,    93,    91,    94,    94,    94,    95,    96,    96,    96,
      97,    97,    97,    97,    97,    98,    98,    99,   100,   100,
     101,   101,   102,   102,   103,   103,   103,   104,   104,   105,
     105,   105,   105,   105,   106,   106,   107,   107,   108,   109,
     109
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     3,     2,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     3,     3,     3,
       5,     5,     5,     3,    10,     0,     7,     0,     2,     1,
       0,     6,     0,     3,     2,     3,     0,     0,     8,     0,
       2,     1,     2,     0,     0,     8,     0,     2,     1,     0,
       6,     0,     3,     2,     0,     2,     2,     2,     1,     0,
       4,     2,     0,     3,     1,     0,     5,     0,     1,     2,
       0,     0,     8,     0,     2,     1,     5,     0,     3,     2,
       2,     2,     3,     3,     1,     2,     1,     2,     2,     1,
       6,     5,     1,     1,     0,     2,     1,     4,     4,     0,
       2,     2,     1,     1,     4,     4,     2,     1,     4,     1,
       1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                  \
do                                                              \
  if (yychar == YYEMPTY)                                        \
    {                                                           \
      yychar = (Token);                                         \
      yylval = (Value);                                         \
      YYPOPSTACK (yylen);                                       \
      yystate = *yyssp;                                         \
      goto yybackup;                                            \
    }                                                           \
  else                                                          \
    {                                                           \
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;                                                  \
    }                                                           \
while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*----------------------------------------.
| Print this symbol's value on YYOUTPUT.  |
`----------------------------------------*/

static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyo = yyoutput;
  YYUSE (yyo);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &(yyvsp[(yyi + 1) - (yynrhs)])
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            /* Fall through.  */
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);

        yyss = yyss1;
        yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 18:
#line 80 "def.y" /* yacc.c:1646  */
    {
      if( def::library->getCells((yyvsp[-1].sval)).size() > 0 ) {
	def::cell = def::library->getCells((yyvsp[-1].sval))[0];
      } else {
	def::cell = def::library->createCell((yyvsp[-1].sval));
      }
    }
#line 1437 "def.y.cc" /* yacc.c:1646  */
    break;

  case 22:
#line 103 "def.y" /* yacc.c:1646  */
    { def::scale_factor = 10.00; }
#line 1443 "def.y.cc" /* yacc.c:1646  */
    break;

  case 23:
#line 108 "def.y" /* yacc.c:1646  */
    { 
      if ( def::points.size() >= 2 ) {
	def::cell->setBoundary(def::points[0].first,def::points[0].second,def::points[1].first,def::points[1].second);
	def::points.resize(0);
      } else {
        cout << "ERROR: Need atleast two points to define DESIGN BBOX" << endl;
      }
    }
#line 1456 "def.y.cc" /* yacc.c:1646  */
    break;

  case 25:
#line 124 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Start reading components section" << endl; }
#line 1462 "def.y.cc" /* yacc.c:1646  */
    break;

  case 26:
#line 127 "def.y" /* yacc.c:1646  */
    { cout << "INFO: End components section" << endl; }
#line 1468 "def.y.cc" /* yacc.c:1646  */
    break;

  case 30:
#line 137 "def.y" /* yacc.c:1646  */
    {
      vector<Cell*> refs = def::library->getCells((yyvsp[0].sval));
      if ( refs.size() > 0 ) {
	def::inst = def::cell->createInstance((yyvsp[-1].sval),refs[0]);
      } else {
	cout << "ERROR: Failed to find reference cell " << (yyvsp[0].sval) << " library " << def::library->getName() << endl; 
      }
    }
#line 1481 "def.y.cc" /* yacc.c:1646  */
    break;

  case 35:
#line 155 "def.y" /* yacc.c:1646  */
    { 
      def::inst->setOrigin(def::points[0].first,def::points[0].second);
      def::inst->setOrientation((yyvsp[0].sval));
      def::points.resize(0);
    }
#line 1491 "def.y.cc" /* yacc.c:1646  */
    break;

  case 36:
#line 164 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Processing Pins Section" << endl; }
#line 1497 "def.y.cc" /* yacc.c:1646  */
    break;

  case 37:
#line 166 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Finished Pins Section" << endl; }
#line 1503 "def.y.cc" /* yacc.c:1646  */
    break;

  case 43:
#line 180 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Processing Nets Section" << endl; }
#line 1509 "def.y.cc" /* yacc.c:1646  */
    break;

  case 44:
#line 182 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Finished Nets Section" << endl; }
#line 1515 "def.y.cc" /* yacc.c:1646  */
    break;

  case 49:
#line 193 "def.y" /* yacc.c:1646  */
    { def::net = def::cell->createNet((yyvsp[0].sval)); }
#line 1521 "def.y.cc" /* yacc.c:1646  */
    break;

  case 50:
#line 195 "def.y" /* yacc.c:1646  */
    { def::points.resize(0); }
#line 1527 "def.y.cc" /* yacc.c:1646  */
    break;

  case 59:
#line 214 "def.y" /* yacc.c:1646  */
    { def::points.resize(0); }
#line 1533 "def.y.cc" /* yacc.c:1646  */
    break;

  case 62:
#line 216 "def.y" /* yacc.c:1646  */
    { def::points.resize(0); }
#line 1539 "def.y.cc" /* yacc.c:1646  */
    break;

  case 65:
#line 222 "def.y" /* yacc.c:1646  */
    {

      cout << "INFO: Number of route points = " << def::points.size() << endl;

      Layer* rlayer = def::technology->getLayer((yyvsp[-2].sval));

      if ( !rlayer ) {
	cout << "ERROR: Layer " << (yyvsp[-2].sval) << " does not exist in technology " 
             << def::library->getTechnology()->getName() << " for library "
             << def::library->getName() << endl; 
      }

      for ( int i = 0; i < def::points.size() - 1 ; i++ ) {
	def::net->createShape(rlayer,def::points[i].first,def::points[i].second,
			      def::points[i+1].first,def::points[i+1].second);
      }

    }
#line 1562 "def.y.cc" /* yacc.c:1646  */
    break;

  case 68:
#line 245 "def.y" /* yacc.c:1646  */
    {

      ViaDef* viadef = def::technology->getViaDef((yyvsp[0].sval));
      if ( !viadef ) {
	cout << "ERROR: Via master " << (yyvsp[0].sval) << " does not exist in technology " 
             << def::library->getTechnology()->getName() << " for library "
             << def::library->getName() << endl; 
      }

      Point origin = def::points[def::points.size() - 1];
      def::net->createVia(viadef,origin.first,origin.second);
    }
#line 1579 "def.y.cc" /* yacc.c:1646  */
    break;

  case 70:
#line 262 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Processing Special nets section" << endl; }
#line 1585 "def.y.cc" /* yacc.c:1646  */
    break;

  case 71:
#line 264 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Finished processing Special nets section" << endl; }
#line 1591 "def.y.cc" /* yacc.c:1646  */
    break;

  case 76:
#line 275 "def.y" /* yacc.c:1646  */
    { cout << "INFO: Processing special net " << (yyvsp[-3].sval) << endl; }
#line 1597 "def.y.cc" /* yacc.c:1646  */
    break;

  case 104:
#line 334 "def.y" /* yacc.c:1646  */
    { def::points.push_back(Point((yyvsp[-2].fval) * def::scale_factor,def::points[def::points.size() - 1].second));}
#line 1603 "def.y.cc" /* yacc.c:1646  */
    break;

  case 105:
#line 336 "def.y" /* yacc.c:1646  */
    { def::points.push_back(Point(def::points[def::points.size() - 1].first, (yyvsp[-1].fval) * def::scale_factor));}
#line 1609 "def.y.cc" /* yacc.c:1646  */
    break;

  case 108:
#line 346 "def.y" /* yacc.c:1646  */
    {  def::points.push_back(Point((yyvsp[-2].fval) * def::scale_factor,(yyvsp[-1].fval) * def::scale_factor)); }
#line 1615 "def.y.cc" /* yacc.c:1646  */
    break;


#line 1619 "def.y.cc" /* yacc.c:1646  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 354 "def.y" /* yacc.c:1906  */


int readDef(Library* library,string filename) {

  cout << "INFO: Reading LEF file " << filename << endl;

  def::library = library;
  def::technology = library->getTechnology();

  // open a file handle to a particular file:
  def_in = fopen(filename.c_str(), "r");

  // make sure it is valid:
  if (!def_in) {
    cout << "Failed to open LEF file " << filename << " for read!" << endl;
    return 1;
  }
        
  // parse through the input until there is no more:
  do {
    if( def_parse() ) {
      fclose(def_in);
      return 1;
    }
  } while (!feof(def_in));

  cout << "INFO: Finished reading LEF file " << filename << endl;

  return 0;
 
}

void def_error(const char *msg) {

  cout << "DEF parse error on line " << def_line_number <<". Message :" << msg << endl;

}
