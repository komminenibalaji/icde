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
#define yyparse         lef_parse
#define yylex           lef_lex
#define yyerror         lef_error
#define yydebug         lef_debug
#define yynerrs         lef_nerrs

#define yylval          lef_lval
#define yychar          lef_char

/* Copy the first part of user declarations.  */
#line 1 "lef.y" /* yacc.c:339  */


#include <lef.h>

#define YYDEBUG 1
#define YYERROR_VERBOSE 1

using namespace std;

// stuff from flex that bison needs to know about:
extern "C" int lef_lex();
extern "C" int lef_parse();
extern "C" FILE *lef_in;
extern int lef_line_number; 
void lef_error(const char *s);


#line 92 "lef.y.cc" /* yacc.c:339  */

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
   by #include "lef.y.hh".  */
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
#line 19 "lef.y" /* yacc.c:355  */

  float fval;
  char cval;
  char *sval;

#line 200 "lef.y.cc" /* yacc.c:355  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE lef_lval;

int lef_parse (void);

#endif /* !YY_LEF_LEF_Y_HH_INCLUDED  */

/* Copy the second part of user declarations.  */

#line 217 "lef.y.cc" /* yacc.c:358  */

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
#define YYFINAL  52
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   347

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  64
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  65
/* YYNRULES -- Number of rules.  */
#define YYNRULES  118
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  295

/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
   by yylex, with out-of-bounds checking.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   316

#define YYTRANSLATE(YYX)                                                \
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, without out-of-bounds checking.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,    63,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    62,
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
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,    73,    73,    78,    79,    83,    84,    85,    86,    87,
      88,    89,    90,    91,    92,    93,    94,    95,    99,   103,
     107,   114,   121,   125,   126,   130,   134,   140,   141,   145,
     149,   150,   151,   157,   155,   162,   167,   174,   172,   180,
     187,   185,   193,   194,   198,   200,   202,   204,   206,   208,
     210,   216,   215,   222,   224,   226,   222,   231,   248,   254,
     255,   259,   265,   266,   269,   270,   271,   272,   276,   282,
     285,   294,   293,   301,   302,   306,   307,   308,   309,   310,
     312,   313,   314,   315,   319,   325,   326,   331,   330,   337,
     338,   342,   346,   347,   352,   351,   358,   359,   363,   365,
     366,   367,   371,   372,   373,   374,   375,   379,   385,   386,
     391,   390,   396,   397,   401,   406,   407,   411,   412
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 1
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "CHAR", "NUMBER", "STRING", "VERSION",
  "NAMESCASESENSITIVE", "DIVIDERCHAR", "BUSBITCHARS", "UNITS", "DATABASE",
  "MICRONS", "PROPERTYDEFINITIONS", "PROPERTY", "USEMINSPACING",
  "MANUFACTURINGGRID", "PIN", "OBS", "ON", "OFF", "CLEARANCEMEASURE",
  "END", "LIBRARY", "DIRECTION", "TYPE", "LAYER", "MASTERSLICE", "PITCH",
  "ROUTING", "EDGECAPACITANCE", "RESISTANCE", "CAPACITANCE", "CUT",
  "SPACING", "WIDTH", "HORIZONTAL", "VERTICAL", "VIA", "RECT", "DEFAULT",
  "VIARULE", "METALOVERHANG", "GENERATE", "OVERHANG", "BY", "TO", "SITE",
  "SIZE", "SYMMETRY", "CLASS", "SHAPE", "PORT", "FOREIGN", "MACRO", "USE",
  "ORIGIN", "SOURCE", "INPUT", "OUTPUT", "TRISTATE", "INOUT", "';'",
  "'\"'", "$accept", "lef", "rules", "rule", "version",
  "namescasesensitive", "busbitchars", "dividechar", "manufacturinggrid",
  "useminspacing", "clearancemeasure", "units", "scalers", "scaler",
  "layer", "layer_masterslice", "$@1", "layer_name", "layer_end",
  "layer_cut", "$@2", "cut_layer_settings", "layer_routing", "$@3",
  "routing_layer_settings", "routing_layer_setting", "via", "$@4",
  "via_layers", "$@5", "$@6", "$@7", "via_layer", "viarule",
  "viarule_layers", "viarule_layer", "viarule_layer_settings",
  "viarule_layer_setting", "viarule_cut", "cut_layer_geometry", "site",
  "macro", "$@8", "macro_settings", "macro_setting", "macro_obs",
  "macro_obs_layers", "macro_obs_layer", "$@9", "obs_layer_geometries",
  "obs_layer_geometry", "macro_pins", "macro_pin", "$@10",
  "macro_pin_settings", "macro_pin_setting", "macro_pin_direction",
  "macro_pin_port", "macro_pin_port_layers", "macro_pin_port_layer",
  "$@11", "port_layer_geometries", "port_layer_geometry",
  "layer_direction", "boolean", YY_NULLPTR
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
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,    59,    34
};
# endif

#define YYPACT_NINF -166

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-166)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      19,     3,    11,   -49,   -41,    53,    58,    63,    27,    67,
      76,    82,    84,    91,    98,    -5,  -166,  -166,  -166,  -166,
    -166,  -166,  -166,  -166,  -166,  -166,  -166,    77,  -166,  -166,
    -166,  -166,  -166,  -166,    45,  -166,  -166,    50,   108,   110,
     102,    -3,  -166,    11,    11,    54,    55,  -166,    75,    78,
      68,  -166,  -166,    96,  -166,    17,  -166,  -166,    57,   119,
     120,   113,  -166,    64,    65,  -166,  -166,  -166,    99,   123,
       6,  -166,    70,    71,    72,    73,    74,    79,  -166,  -166,
    -166,  -166,   124,   109,    99,    80,   125,   112,   131,   135,
     138,   139,   140,   136,   141,    21,  -166,  -166,   130,  -166,
    -166,  -166,  -166,  -166,    86,  -166,   127,   126,    88,   146,
     128,   104,  -166,   150,    15,  -166,    94,   114,   152,   100,
     154,   156,   101,   159,  -166,  -166,   143,    69,   132,  -166,
     162,   163,  -166,   137,  -166,   164,  -166,   165,    28,   111,
    -166,  -166,  -166,   167,   115,  -166,   168,   116,  -166,  -166,
     169,  -166,    49,   171,   172,   174,   175,   177,   178,    60,
    -166,   179,   143,  -166,   122,   126,    49,   129,   133,    47,
     180,   160,   182,    -4,  -166,  -166,  -166,   134,  -166,   142,
    -166,  -166,  -166,  -166,   144,   145,   147,   184,   185,   148,
     149,  -166,  -166,   151,  -166,   153,  -166,   155,   158,   157,
     161,   166,  -166,   170,   173,   188,    39,  -166,   176,   189,
    -166,   181,  -166,  -166,  -166,  -166,  -166,   183,   186,  -166,
    -166,  -166,   194,   126,   -29,   195,   190,   196,  -166,  -166,
    -166,  -166,   187,  -166,  -166,  -166,  -166,   197,   181,  -166,
    -166,  -166,   198,  -166,   199,   204,   208,   -29,  -166,   210,
     211,   191,  -166,   212,  -166,   214,   193,   192,   200,  -166,
     215,   201,   218,   202,   219,   221,   223,  -166,  -166,   224,
     225,   203,   226,   202,  -166,   227,   205,   206,   207,   209,
     220,   229,  -166,   213,  -166,  -166,  -166,  -166,   232,   230,
    -166,  -166,   236,   216,  -166
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     4,     5,     6,     7,
       8,     9,    10,    11,    12,    13,    30,     0,    31,    32,
      15,    16,    14,    17,     0,   117,   118,     0,     0,     0,
       0,     0,    28,     0,     0,     0,     0,    35,     0,     0,
       0,    71,     1,     0,     3,     0,    18,    19,     0,     0,
       0,     0,    27,     0,     0,    22,    25,    51,     0,     0,
       0,     2,     0,     0,     0,     0,     0,     0,    26,    24,
      23,    53,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    74,    82,    83,    93,
      33,    40,    37,    21,     0,    29,     0,     0,     0,     0,
      60,     0,    94,     0,     0,    86,     0,     0,     0,     0,
       0,     0,     0,     0,    73,    92,     0,     0,     0,    20,
       0,     0,    54,     0,    58,     0,    59,     0,     0,     0,
      84,    85,    81,     0,     0,    75,     0,     0,    76,    72,
       0,    34,     0,     0,     0,     0,     0,     0,     0,     0,
      43,     0,     0,    52,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    97,   101,    87,     0,    80,     0,
      78,    36,   116,   115,     0,     0,     0,     0,     0,     0,
       0,    41,    42,     0,    38,     0,    55,     0,     0,     0,
     102,   103,   104,     0,     0,     0,     0,   109,     0,     0,
      96,     0,    79,    77,    44,    45,    50,     0,     0,    47,
      46,    39,     0,     0,    64,     0,     0,     0,   105,   106,
      98,   100,     0,   107,   108,    99,    95,     0,    88,    90,
      48,    49,     0,    56,     0,     0,     0,    61,    63,     0,
       0,     0,   110,     0,    89,     0,     0,     0,     0,    62,
       0,     0,     0,     0,     0,     0,     0,    67,    66,     0,
       0,     0,     0,   111,   113,     0,     0,     0,     0,     0,
       0,     0,   112,     0,    57,    65,    69,    68,     0,     0,
      91,    70,     0,     0,   114
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -166,  -166,  -166,   228,  -166,  -166,  -166,  -166,  -166,  -166,
    -166,  -166,  -166,   217,  -166,  -166,  -166,  -166,  -150,  -166,
    -166,  -166,  -166,  -166,  -166,    31,  -166,  -166,  -166,  -166,
    -166,  -166,  -165,  -166,  -166,   222,  -166,     0,  -166,  -166,
    -166,  -166,  -166,  -166,   231,  -166,  -166,   233,  -166,  -166,
      12,  -166,   234,  -166,  -166,    83,  -166,  -166,  -166,    38,
    -166,  -166,   -22,    87,    66
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    14,    15,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    41,    42,    25,    26,   126,    27,   151,    28,
     128,   162,    29,   127,   159,   160,    30,    81,   106,   107,
     165,   223,   132,    31,    83,    84,   247,   248,   136,   226,
      32,    33,    70,    95,    96,    97,   114,   115,   211,   238,
     239,    98,    99,   138,   173,   174,   203,   175,   206,   207,
     263,   273,   274,   184,    37
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint16 yytable[] =
{
     196,     1,     2,     3,     4,     5,   244,    34,    40,   191,
       6,     7,   194,   245,    38,   246,     8,    53,   209,    61,
     169,     9,    39,    86,    87,     1,     2,     3,     4,     5,
      35,    36,    46,    10,     6,     7,    11,   140,    86,    87,
       8,   113,    12,   123,    72,     9,    73,   170,   171,    13,
      74,   172,   169,    88,    89,    90,    91,    10,   243,    92,
      11,   233,    93,    94,    40,   205,    12,    45,    88,    89,
      90,    91,    47,    13,    92,    43,    44,    93,    94,   170,
     171,    48,   150,   172,   152,   182,   183,    49,   153,    50,
     154,   155,   156,   152,   157,   158,    51,   153,    52,   154,
     155,   156,    55,   157,   158,   200,   201,    56,   202,    63,
      64,    58,    57,    59,    60,    67,    65,    66,    69,    71,
      75,    68,    76,    78,    77,    82,    79,    80,    85,   108,
     112,   109,   100,   101,   102,   103,   116,   104,   113,   117,
     121,   105,   111,   118,   119,   120,   122,    86,   129,   130,
     133,   134,   131,   137,   135,   139,   142,   144,   146,   143,
     147,   166,   145,   148,   149,   150,   161,   163,   164,   167,
     168,   177,   179,   176,   181,   185,   186,   178,   180,   187,
     188,   189,   190,   193,   195,   204,   205,   208,   217,   218,
     192,   198,   222,   232,   236,   199,   212,   225,   242,   249,
     251,   253,   255,   256,   213,   227,   214,   215,   257,   216,
     219,   220,   258,   221,   260,   261,   264,   224,   265,   269,
     237,   228,   271,   275,   250,   276,   229,   277,   278,   279,
     281,   283,   230,   289,   292,   231,   262,   291,   235,   266,
     293,   272,   288,    54,   234,   240,   270,   259,   241,   252,
     254,   282,     0,   197,   267,     0,   210,     0,    62,     0,
       0,     0,   268,     0,     0,   280,     0,   284,   285,   286,
       0,   287,     0,     0,     0,   290,     0,     0,   294,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   110,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   124,     0,     0,     0,
       0,     0,   125,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   141
};

static const yytype_int16 yycheck[] =
{
     165,     6,     7,     8,     9,    10,    35,     4,    11,   159,
      15,    16,   162,    42,    63,    44,    21,    22,    22,    22,
      24,    26,    63,    17,    18,     6,     7,     8,     9,    10,
      19,    20,     5,    38,    15,    16,    41,    22,    17,    18,
      21,    26,    47,    22,    27,    26,    29,    51,    52,    54,
      33,    55,    24,    47,    48,    49,    50,    38,   223,    53,
      41,    22,    56,    57,    11,    26,    47,     4,    47,    48,
      49,    50,     5,    54,    53,    17,    18,    56,    57,    51,
      52,     5,    22,    55,    24,    36,    37,     5,    28,     5,
      30,    31,    32,    24,    34,    35,     5,    28,     0,    30,
      31,    32,    25,    34,    35,    58,    59,    62,    61,    43,
      44,     3,    62,     3,    12,    40,    62,    62,    50,    23,
      63,    43,     3,    10,     4,    26,    62,    62,     5,     5,
       5,    22,    62,    62,    62,    62,     5,    63,    26,     4,
       4,    62,    62,     5,     5,     5,     5,    17,    62,    22,
      62,     5,    26,    49,    26,     5,    62,     5,     4,    45,
       4,    24,    62,    62,     5,    22,    34,     5,     5,     5,
       5,     4,     4,    62,     5,     4,     4,    62,    62,     5,
       5,     4,     4,     4,    62,     5,    26,     5,     4,     4,
     159,    62,    39,     5,     5,    62,    62,    39,     4,     4,
       4,     4,     4,     4,    62,    48,    62,    62,     4,    62,
      62,    62,     4,    62,     4,     4,     4,    62,     4,     4,
      39,    60,     4,     4,    34,     4,    60,     4,     4,     4,
       4,     4,    62,     4,     4,    62,    45,     5,    62,    46,
       4,    39,    22,    15,   206,    62,    45,   247,    62,    62,
     238,   273,    -1,   166,    62,    -1,   173,    -1,    41,    -1,
      -1,    -1,    62,    -1,    -1,    62,    -1,    62,    62,    62,
      -1,    62,    -1,    -1,    -1,    62,    -1,    -1,    62,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    84,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    95,    -1,    -1,    -1,
      -1,    -1,    98,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   114
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     6,     7,     8,     9,    10,    15,    16,    21,    26,
      38,    41,    47,    54,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    78,    79,    81,    83,    86,
      90,    97,   104,   105,     4,    19,    20,   128,    63,    63,
      11,    76,    77,    17,    18,     4,     5,     5,     5,     5,
       5,     5,     0,    22,    67,    25,    62,    62,     3,     3,
      12,    22,    77,   128,   128,    62,    62,    40,    43,    50,
     106,    23,    27,    29,    33,    63,     3,     4,    10,    62,
      62,    91,    26,    98,    99,     5,    17,    18,    47,    48,
      49,    50,    53,    56,    57,   107,   108,   109,   115,   116,
      62,    62,    62,    62,    63,    62,    92,    93,     5,    22,
      99,    62,     5,    26,   110,   111,     5,     4,     5,     5,
       5,     4,     5,    22,   108,   116,    80,    87,    84,    62,
      22,    26,    96,    62,     5,    26,   102,    49,   117,     5,
      22,   111,    62,    45,     5,    62,     4,     4,    62,     5,
      22,    82,    24,    28,    30,    31,    32,    34,    35,    88,
      89,    34,    85,     5,     5,    94,    24,     5,     5,    24,
      51,    52,    55,   118,   119,   121,    62,     4,    62,     4,
      62,     5,    36,    37,   127,     4,     4,     5,     5,     4,
       4,    82,    89,     4,    82,    62,    96,   127,    62,    62,
      58,    59,    61,   120,     5,    26,   122,   123,     5,    22,
     119,   112,    62,    62,    62,    62,    62,     4,     4,    62,
      62,    62,    39,    95,    62,    39,   103,    48,    60,    60,
      62,    62,     5,    22,   123,    62,     5,    39,   113,   114,
      62,    62,     4,    96,    35,    42,    44,   100,   101,     4,
      34,     4,    62,     4,   114,     4,     4,     4,     4,   101,
       4,     4,    45,   124,     4,     4,    46,    62,    62,     4,
      45,     4,    39,   125,   126,     4,     4,     4,     4,     4,
      62,     4,   126,     4,    62,    62,    62,    62,    22,     4,
      62,     5,     4,     4,    62
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    64,    65,    66,    66,    67,    67,    67,    67,    67,
      67,    67,    67,    67,    67,    67,    67,    67,    68,    69,
      70,    71,    72,    73,    73,    74,    75,    76,    76,    77,
      78,    78,    78,    80,    79,    81,    82,    84,    83,    85,
      87,    86,    88,    88,    89,    89,    89,    89,    89,    89,
      89,    91,    90,    93,    94,    95,    92,    96,    97,    98,
      98,    99,   100,   100,   101,   101,   101,   101,   102,   103,
     104,   106,   105,   107,   107,   108,   108,   108,   108,   108,
     108,   108,   108,   108,   109,   110,   110,   112,   111,   113,
     113,   114,   115,   115,   117,   116,   118,   118,   119,   119,
     119,   119,   120,   120,   120,   120,   120,   121,   122,   122,
     124,   123,   125,   125,   126,   127,   127,   128,   128
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     3,     2,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     3,     3,
       6,     5,     3,     4,     4,     3,     4,     2,     1,     4,
       1,     1,     1,     0,     6,     2,     2,     0,     7,     3,
       0,     7,     2,     1,     3,     3,     3,     3,     4,     4,
       3,     0,     7,     0,     0,     0,     6,     9,     6,     3,
       2,     7,     2,     1,     0,     5,     3,     3,     9,     6,
      15,     0,     6,     2,     1,     3,     3,     5,     4,     5,
       4,     3,     1,     1,     3,     2,     1,     0,     5,     2,
       1,     6,     2,     1,     0,     6,     2,     1,     3,     3,
       3,     1,     1,     1,     1,     2,     2,     3,     2,     1,
       0,     5,     2,     1,     6,     1,     1,     1,     1
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
        case 20:
#line 108 "lef.y" /* yacc.c:1646  */
    {
      lef::library->setBusDelimiters((yyvsp[-3].cval),(yyvsp[-2].cval));
    }
#line 1520 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 21:
#line 115 "lef.y" /* yacc.c:1646  */
    {
      lef::library->setHierarchyDelimiter((yyvsp[-2].cval));
    }
#line 1528 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 33:
#line 157 "lef.y" /* yacc.c:1646  */
    { lef::layer->setProperty("type","masterslice"); }
#line 1534 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 35:
#line 163 "lef.y" /* yacc.c:1646  */
    { lef::layer = lef::technology->createLayer((yyvsp[0].sval)); }
#line 1540 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 36:
#line 168 "lef.y" /* yacc.c:1646  */
    { lef::layer = NULL ; }
#line 1546 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 37:
#line 174 "lef.y" /* yacc.c:1646  */
    { lef::layer->setProperty("type","cut"); }
#line 1552 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 39:
#line 181 "lef.y" /* yacc.c:1646  */
    { lef::layer->setMinSpacing((yyvsp[-1].fval)); }
#line 1558 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 40:
#line 187 "lef.y" /* yacc.c:1646  */
    { lef::layer->setProperty("type","routing"); }
#line 1564 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 44:
#line 199 "lef.y" /* yacc.c:1646  */
    { lef::layer->setDirection((yyvsp[-1].sval)); }
#line 1570 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 45:
#line 201 "lef.y" /* yacc.c:1646  */
    { lef::layer->setProperty("pitch",(yyvsp[-1].fval)); }
#line 1576 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 46:
#line 203 "lef.y" /* yacc.c:1646  */
    { lef::layer->setMinWidth((yyvsp[-1].fval)*1000); }
#line 1582 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 47:
#line 205 "lef.y" /* yacc.c:1646  */
    { lef::layer->setMinSpacing((yyvsp[-1].fval)*1000); }
#line 1588 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 48:
#line 207 "lef.y" /* yacc.c:1646  */
    { lef::layer->setProperty("resistance",(yyvsp[-1].fval)); }
#line 1594 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 49:
#line 209 "lef.y" /* yacc.c:1646  */
    { lef::layer->setProperty("capacitance",(yyvsp[-1].fval)); }
#line 1600 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 50:
#line 211 "lef.y" /* yacc.c:1646  */
    { lef::layer->setProperty("edge_capacitance",(yyvsp[-1].fval)); }
#line 1606 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 51:
#line 216 "lef.y" /* yacc.c:1646  */
    { lef::viadef = lef::technology->createViaDef((yyvsp[-1].sval)); }
#line 1612 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 53:
#line 222 "lef.y" /* yacc.c:1646  */
    { lef::viadefShapeType = "lower"; }
#line 1618 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 54:
#line 224 "lef.y" /* yacc.c:1646  */
    { lef::viadefShapeType = "cut"; }
#line 1624 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 55:
#line 226 "lef.y" /* yacc.c:1646  */
    { lef::viadefShapeType = "upper"; }
#line 1630 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 57:
#line 233 "lef.y" /* yacc.c:1646  */
    { 
      if ( lef::viadefShapeType == "lower" ) {
	lef::viadef->setLowerLayer((yyvsp[-7].sval)) ;
	lef::viadef->setLowerEnclosure((yyvsp[-4].fval)*1000.00,(yyvsp[-3].fval)*1000.00,(yyvsp[-2].fval)*1000.00,(yyvsp[-1].fval)*1000.00);
      } else if ( lef::viadefShapeType == "cut" ) {
	lef::viadef->setCutLayer((yyvsp[-7].sval)) ;
	lef::viadef->setCutEnclosure((yyvsp[-4].fval)*1000.00,(yyvsp[-3].fval)*1000.00,(yyvsp[-2].fval)*1000.00,(yyvsp[-1].fval)*1000.00);
      } else if ( lef::viadefShapeType == "upper" ) {
	lef::viadef->setUpperLayer((yyvsp[-7].sval)) ;
	lef::viadef->setUpperEnclosure((yyvsp[-4].fval)*1000.00,(yyvsp[-3].fval)*1000.00,(yyvsp[-2].fval)*1000.00,(yyvsp[-1].fval)*1000.00);
      }
    }
#line 1647 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 71:
#line 294 "lef.y" /* yacc.c:1646  */
    { lef::cell = lef::library->createCell((yyvsp[0].sval));}
#line 1653 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 72:
#line 297 "lef.y" /* yacc.c:1646  */
    { lef::cell = NULL; }
#line 1659 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 79:
#line 311 "lef.y" /* yacc.c:1646  */
    { lef::cell->setBoundary(0,0,(yyvsp[-3].fval)*1000.00,(yyvsp[-1].fval)*1000.00); }
#line 1665 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 87:
#line 331 "lef.y" /* yacc.c:1646  */
    { lef::obsLayerName = (yyvsp[-1].sval); }
#line 1671 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 88:
#line 333 "lef.y" /* yacc.c:1646  */
    { lef::obsLayerName = ""; }
#line 1677 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 91:
#line 343 "lef.y" /* yacc.c:1646  */
    { lef::cell->createRoutingBlockage(lef::obsLayerName,(yyvsp[-4].fval)*1000.00,(yyvsp[-3].fval)*1000.00,(yyvsp[-2].fval)*1000.00,(yyvsp[-1].fval)*1000.00); }
#line 1683 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 94:
#line 352 "lef.y" /* yacc.c:1646  */
    { lef::portName = (yyvsp[0].sval); }
#line 1689 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 98:
#line 364 "lef.y" /* yacc.c:1646  */
    { lef::port = lef::cell->createPort(lef::portName,(yyvsp[-1].sval)); }
#line 1695 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 102:
#line 371 "lef.y" /* yacc.c:1646  */
    {(yyval.sval) = (char*)"in";}
#line 1701 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 103:
#line 372 "lef.y" /* yacc.c:1646  */
    {(yyval.sval) = (char*)"out";}
#line 1707 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 104:
#line 373 "lef.y" /* yacc.c:1646  */
    {(yyval.sval) = (char*)"inout";}
#line 1713 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 105:
#line 374 "lef.y" /* yacc.c:1646  */
    {(yyval.sval) = (char*)"in";}
#line 1719 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 106:
#line 375 "lef.y" /* yacc.c:1646  */
    {(yyval.sval) = (char*)"out";}
#line 1725 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 110:
#line 391 "lef.y" /* yacc.c:1646  */
    { lef::portLayerName = (yyvsp[-1].sval); }
#line 1731 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 114:
#line 402 "lef.y" /* yacc.c:1646  */
    { lef::port->createShape(lef::portLayerName,(yyvsp[-4].fval)*1000.00,(yyvsp[-3].fval)*1000.00,(yyvsp[-2].fval)*1000.00,(yyvsp[-1].fval)*1000.00); }
#line 1737 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 115:
#line 406 "lef.y" /* yacc.c:1646  */
    {(yyval.sval) = (char*)"vertical";}
#line 1743 "lef.y.cc" /* yacc.c:1646  */
    break;

  case 116:
#line 407 "lef.y" /* yacc.c:1646  */
    {(yyval.sval) = (char*)"horizontal";}
#line 1749 "lef.y.cc" /* yacc.c:1646  */
    break;


#line 1753 "lef.y.cc" /* yacc.c:1646  */
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
#line 416 "lef.y" /* yacc.c:1906  */


int readLef(Library* lib,string filename) {

  cout << "INFO: Reading LEF file " << filename << endl;

  lef::library = lib;
  lef::technology = lib->getTechnology();

  // open a file handle to a particular file:
  lef_in = fopen(filename.c_str(), "r");

  // make sure it is valid:
  if (!lef_in) {
    cout << "Failed to open LEF file " << filename << " for read!" << endl;
    return 1;
  }
        
  // parse through the input until there is no more:
  do {
    if( lef_parse() ) {
      fclose(lef_in);
      return 1;
    }
  } while (!feof(lef_in));

  cout << "INFO: Finished reading LEF file " << filename << endl;

  return 0;
 
}

void lef_error(const char *msg) {

  cout << "LEF parse error on line " << lef_line_number <<". Message :" << msg << endl;

}
