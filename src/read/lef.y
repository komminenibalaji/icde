%{

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
%token VERSION
%token NAMESCASESENSITIVE
%token DIVIDERCHAR
%token BUSBITCHARS
%token UNITS DATABASE MICRONS
%token PROPERTYDEFINITIONS PROPERTY
%token USEMINSPACING 
%token MANUFACTURINGGRID
%token PIN OBS
%token ON OFF
%token CLEARANCEMEASURE
%token END LIBRARY
%token DIRECTION
%token TYPE
%token LAYER 
%token MASTERSLICE 
%token PITCH 
%token ROUTING 
%token EDGECAPACITANCE 
%token RESISTANCE 
%token CAPACITANCE 
%token CUT 
%token SPACING 
%token WIDTH 
%token HORIZONTAL 
%token VERTICAL 
%token VIA
%token RECT
%token DEFAULT
%token VIARULE
%token METALOVERHANG
%token GENERATE
%token OVERHANG
%token BY TO
%token SITE SIZE SYMMETRY CLASS
%token SHAPE PORT FOREIGN MACRO USE ORIGIN SOURCE
%token INPUT OUTPUT TRISTATE INOUT

%type <sval> layer_direction macro_pin_direction

%%

lef: 
    rules
    END LIBRARY
    ;

rules:
    rules rule
    | rule
    ;

rule:
    version
    | namescasesensitive
    | busbitchars
    | dividechar
    | manufacturinggrid
    | useminspacing
    | clearancemeasure
    | units
    | layer
    | site
    | via
    | viarule
    | macro
    ;

version:
    VERSION NUMBER ';'
    ;

namescasesensitive:
    NAMESCASESENSITIVE boolean ';'
    ;

busbitchars:
    BUSBITCHARS '"' CHAR CHAR '"' ';'
    {
      lef::library->setBusDelimiters($3,$4);
    }
    ;

dividechar:
    DIVIDERCHAR '"' CHAR '"' ';'
    {
      lef::library->setHierarchyDelimiter($3);
    }
    ;

manufacturinggrid:
    MANUFACTURINGGRID NUMBER ';'
    ;

useminspacing:
    USEMINSPACING OBS boolean ';'
    | USEMINSPACING PIN boolean ';'
    ;

clearancemeasure:
    CLEARANCEMEASURE STRING ';'
    ;

units:
    UNITS
      scalers      
    END UNITS    
    ;

scalers:
    scalers scaler
    | scaler 
    ;

scaler:
    DATABASE MICRONS NUMBER ';'
    ;

layer:
    layer_masterslice
    | layer_cut
    | layer_routing
    ;

layer_masterslice:
    layer_name    
       TYPE MASTERSLICE ';'
       { lef::layer->setProperty("type","masterslice"); }
    layer_end
    ;

layer_name:
    LAYER STRING 
    { lef::layer = lef::technology->createLayer($2); }
    ;

layer_end:
    END STRING
    { lef::layer = NULL ; }
    ;

layer_cut:
    layer_name
        TYPE CUT ';'
        { lef::layer->setProperty("type","cut"); }          
        cut_layer_settings
    layer_end
    ;

cut_layer_settings:
    SPACING NUMBER ';'
    { lef::layer->setMinSpacing($2); }
    ;

layer_routing:
    layer_name
        TYPE ROUTING ';'
        { lef::layer->setProperty("type","routing"); }          
        routing_layer_settings
    layer_end
    ;

routing_layer_settings:
    routing_layer_settings routing_layer_setting
    | routing_layer_setting
    ;

routing_layer_setting:
    DIRECTION layer_direction ';'
    { lef::layer->setDirection($2); }
    | PITCH NUMBER ';'
    { lef::layer->setProperty("pitch",$2); }
    | WIDTH NUMBER ';'
    { lef::layer->setMinWidth($2*1000); }
    | SPACING NUMBER ';'
    { lef::layer->setMinSpacing($2*1000); }
    | RESISTANCE STRING NUMBER ';'
    { lef::layer->setProperty("resistance",$3); }
    | CAPACITANCE STRING NUMBER ';'
    { lef::layer->setProperty("capacitance",$3); }
    | EDGECAPACITANCE NUMBER ';'
    { lef::layer->setProperty("edge_capacitance",$2); }
    ;

via:
    VIA STRING DEFAULT
    { lef::viadef = lef::technology->createViaDef($2); } 
      via_layers
    END STRING
    ;

via_layers:    
    { lef::viadefShapeType = "lower"; } 
    via_layer 
    { lef::viadefShapeType = "cut"; } 
    via_layer 
    { lef::viadefShapeType = "upper"; } 
    via_layer
    ;

via_layer:
    LAYER STRING ';'
      RECT NUMBER NUMBER NUMBER NUMBER ';'
    { 
      if ( lef::viadefShapeType == "lower" ) {
	lef::viadef->setLowerLayer($2) ;
	lef::viadef->setLowerEnclosure($5*1000.00,$6*1000.00,$7*1000.00,$8*1000.00);
      } else if ( lef::viadefShapeType == "cut" ) {
	lef::viadef->setCutLayer($2) ;
	lef::viadef->setCutEnclosure($5*1000.00,$6*1000.00,$7*1000.00,$8*1000.00);
      } else if ( lef::viadefShapeType == "upper" ) {
	lef::viadef->setUpperLayer($2) ;
	lef::viadef->setUpperEnclosure($5*1000.00,$6*1000.00,$7*1000.00,$8*1000.00);
      }
    }
    ;

viarule:
    VIARULE STRING GENERATE
      viarule_layers
    END STRING
    ;

viarule_layers:
    viarule_layer viarule_layer viarule_cut 
    | viarule_layer viarule_layer
    ;

viarule_layer:
    LAYER STRING ';'
       DIRECTION layer_direction ';'
       viarule_layer_settings         
    ;

viarule_layer_settings:
    viarule_layer_settings viarule_layer_setting
    | viarule_layer_setting
    ;

viarule_layer_setting:
    | WIDTH NUMBER TO NUMBER ';'
    | OVERHANG NUMBER ';'
    | METALOVERHANG NUMBER ';'
    ;

viarule_cut:
    LAYER STRING ';'
       cut_layer_geometry
       SPACING NUMBER BY NUMBER ';'
    ;

cut_layer_geometry:
    RECT NUMBER NUMBER NUMBER NUMBER ';'

site:
    SITE STRING
      CLASS STRING ';'
      SYMMETRY STRING ';'
      SIZE NUMBER BY NUMBER ';'
    END STRING
    ;

macro:
    MACRO STRING
    { lef::cell = lef::library->createCell($2);}
    macro_settings      
    END STRING
    { lef::cell = NULL; }
    ;

macro_settings:
    macro_settings macro_setting
    | macro_setting
    ;

macro_setting:
    CLASS STRING ';'
    | SOURCE STRING ';'
    | FOREIGN STRING NUMBER NUMBER ';'
    | ORIGIN NUMBER NUMBER ';'
    | SIZE NUMBER BY NUMBER ';'
    { lef::cell->setBoundary(0,0,$2*1000.00,$4*1000.00); }
    | SYMMETRY STRING STRING ';'
    | SITE STRING ';'
    | macro_obs
    | macro_pins
    ;

macro_obs:
    OBS
      macro_obs_layers
    END
    ;

macro_obs_layers:
    macro_obs_layers macro_obs_layer
    | macro_obs_layer
    ;

macro_obs_layer:
    LAYER STRING ';'
    { lef::obsLayerName = $2; }
      obs_layer_geometries
    { lef::obsLayerName = ""; }
    ;

obs_layer_geometries:
    obs_layer_geometries obs_layer_geometry
    | obs_layer_geometry
    ;

obs_layer_geometry:
    RECT NUMBER NUMBER NUMBER NUMBER ';'
    { lef::cell->createRoutingBlockage(lef::obsLayerName,$2*1000.00,$3*1000.00,$4*1000.00,$5*1000.00); }      

macro_pins:
    macro_pins macro_pin
    | macro_pin
    ;

macro_pin:
    PIN STRING
    { lef::portName = $2; }
        macro_pin_settings
    END STRING
    ;

macro_pin_settings:
    macro_pin_settings macro_pin_setting
    | macro_pin_setting
    ;

macro_pin_setting:
    DIRECTION macro_pin_direction ';'
    { lef::port = lef::cell->createPort(lef::portName,$2); }
    | USE STRING ';'
    | SHAPE STRING ';'
    | macro_pin_port
    ;

macro_pin_direction:
    INPUT {$$ = (char*)"in";}
    | OUTPUT {$$ = (char*)"out";}
    | INOUT {$$ = (char*)"inout";}
    | INPUT TRISTATE {$$ = (char*)"in";}
    | OUTPUT TRISTATE {$$ = (char*)"out";}
    ;

macro_pin_port:
    PORT
      macro_pin_port_layers
    END
    ;

macro_pin_port_layers:
    macro_pin_port_layers macro_pin_port_layer
    | macro_pin_port_layer 
    ;

macro_pin_port_layer:
    LAYER STRING ';'
      { lef::portLayerName = $2; }
      port_layer_geometries
    ;

port_layer_geometries:
    port_layer_geometries port_layer_geometry
    | port_layer_geometry    
    ;

port_layer_geometry:
    RECT NUMBER NUMBER NUMBER NUMBER ';'
    { lef::port->createShape(lef::portLayerName,$2*1000.00,$3*1000.00,$4*1000.00,$5*1000.00); }
    ;

layer_direction:
    VERTICAL     {$$ = (char*)"vertical";}
    | HORIZONTAL {$$ = (char*)"horizontal";}
    ;

boolean:
    ON
    | OFF
    ;


%%

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
