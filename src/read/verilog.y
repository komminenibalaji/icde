%{

#include <verilog.h>

#define YYDEBUG 1
#define YYERROR_VERBOSE 1

using namespace std;

// stuff from flex that bison needs to know about:
extern "C" int verilog_lex();
extern "C" int verilog_parse();
extern "C" FILE *verilog_in;
extern int verilog_line_number; 
void verilog_error(const char *s);

%}

%union {
  float fval;
  char cval;
  char *sval;
}

%error-verbose

%token <cval> CHAR
%token <fval> NUMBER
%token <sval> STRING
%token MODULE ENDMODULE
%token INPUT OUTPUT WIRE TICK

%type <sval> port_direction

%%

verilog: 
    modules 
    ;

modules:
    | modules module
    | module
    ;

module:
    MODULE STRING '(' ports ')' ';'
        entities
    ENDMODULE
    ;

ports:
    | STRING
    | ports ',' STRING
    ;

entities:
    | entities entity
    | entity
    ;

entity:
    port
    | wire
    | instance
    ;

port:
    port_direction STRING ';'
    | port_direction '[' NUMBER ':' NUMBER ']' STRING ';'

port_direction:
    INPUT     {$$ = (char*)"in";}
    | OUTPUT  {$$ = (char*)"out";}
    ;

wire:
    WIRE STRING ';'
    | WIRE '[' NUMBER ':' NUMBER ']' STRING ';'

instance:
    STRING STRING '(' pins ')' ';'

pins:
    | pins ',' pin
    | pin
    ;

pin:
    '.' STRING '(' STRING ')'
    | '.' STRING '(' STRING '[' NUMBER ']' ')'
    | '.' STRING '(' NUMBER TICK STRING ')'
 
%%

int readVerilog(Library* library,string filename) {

  cout << "INFO: Reading Verilog file " << filename << endl;

  verilog::library = library;

  // open a file handle to a particular file:
  verilog_in = fopen(filename.c_str(), "r");

  // make sure it is valid:
  if (!verilog_in) {
    cout << "INFO: Failed to open Verilog file " << filename << " for read!" << endl;
    return 1;
  }
        
  // parse through the input until there is no more:
  do {
    if( verilog_parse() ) {
      fclose(verilog_in);
      return 1;
    }
  } while (!feof(verilog_in));

  cout << "INFO: Finished reading Verilog file " << filename << endl;

  return 0;
 
}

void verilog_error(const char *msg) {

  cout << "ERROR: Verilog parse error on line " << verilog_line_number <<". Message :" << msg << endl;

}
