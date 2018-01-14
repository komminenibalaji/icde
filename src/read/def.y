%{

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
%token DESIGN
%token VERSION
%token NAMESCASESENSITIVE
%token DIVIDERCHAR
%token BUSBITCHARS
%token DIEAREA
%token UNITS DISTANCE MICRONS
%token NONDEFAULTRULE
%token TRACKS STEP LAYER DO
%token COMPONENTS PLACED FIXED UNPLACED
%token PINS NET 
%token NETS ROUTED NEW PIN 
%token SPECIALNETS RECT POLYGON SOURCE
%token DIRECTION INPUT OUTPUT TRISTATE INOUT
%token PROPERTYDEFINITIONS PROPERTY
%token END ON OFF TYPE USE

%%

def: 
    rules
    END DESIGN
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
    | design
    | units
    | diearea
    | tracks
    | components_section
    | pins_section
    | nets_section
    | specialnets_section
    ;

version:
    VERSION NUMBER ';'
    ;

design:
    DESIGN STRING ';'
    {
      if( def::library->getCells($2).size() > 0 ) {
	def::cell = def::library->getCells($2)[0];
      } else {
	def::cell = def::library->createCell($2);
      }
    }
    ;

namescasesensitive:
    NAMESCASESENSITIVE boolean ';'
    ;

busbitchars:
    BUSBITCHARS '"' STRING '"' ';'
    ;

dividechar:
    DIVIDERCHAR '"' CHAR '"' ';'
    ;

units:
    UNITS DISTANCE MICRONS NUMBER ';'
    { def::scale_factor = 10000 / $4; }
    ;

diearea:
    DIEAREA points ';'
    { 
      if ( def::points.size() >= 2 ) {
	def::cell->setBoundary(def::points[0].first,def::points[0].second,def::points[1].first,def::points[1].second);
	def::points.resize(0);
      } else {
        cout << "ERROR: Need atleast two points to define DESIGN BBOX" << endl;
      }
    }
    ;

tracks:
    TRACKS STRING NUMBER DO NUMBER STEP NUMBER LAYER STRING ';'
    ;

components_section:
    COMPONENTS NUMBER ';'
    { cout << "INFO: Start reading components section" << endl; }
       components    
    END COMPONENTS
    { cout << "INFO: End components section" << endl; }
    ;

components:
    | components component
    | component
    ;

component:
    '-' STRING STRING 
    {
      vector<Cell*> refs = def::library->getCells($3);
      if ( refs.size() > 0 ) {
	def::inst = def::cell->createInstance($2,refs[0]);
      } else {
	cout << "ERROR: Failed to find reference cell " << $3 << " library " << def::library->getName() << endl; 
      }
    }
    component_properties ';'
    ;

component_properties:
    | component_properties '+' component_property
    | '+' component_property
    ;

component_property:
    PLACED point STRING 
    { 
      def::inst->setOrigin(def::points[0].first,def::points[0].second);
      def::inst->setOrientation($3);
      def::points.resize(0);
    }
    ;

pins_section:
    PINS NUMBER ';'
    { cout << "INFO: Processing Pins Section" << endl; }
        pins
    { cout << "INFO: Finished Pins Section" << endl; }
    END PINS
    ;

pins:
    | pins pin
    | pin
    ;

pin:
    '-' STRING 
    pin_properties ';'
    ;

pin_properties:
    | pin_properties '+' pin_property 
    | '+' pin_property 
    ;

pin_property:
    NET STRING
    | LAYER STRING point point
    | PLACED point STRING
    ;

nets_section:
    NETS NUMBER ';'
    { cout << "INFO: Processing Nets Section" << endl; }
       nets
    { cout << "INFO: Finished Nets Section" << endl; }
    END NETS
    ;

nets:
    | nets net
    | net
    ;

net:
    '-' STRING 
    { def::net = def::cell->createNet($2); }
    net_pins net_properties ';'
    { def::points.resize(0); }
    ;

net_properties:
    | net_properties '+' net_property
    | '+' net_property
    ;

net_property:
    | NONDEFAULTRULE STRING
    | net_route_status net_routes
    ;

net_routes:
    net_routes net_route_shapes
    | net_route_shapes
    ;

net_route_shapes:
    net_route_shapes NEW { def::points.resize(0); } net_route_shape
    | net_route_shapes net_route_shape
    | NEW { def::points.resize(0); } net_route_shape
    | net_route_shape
    ;

net_route_shape:
    STRING point routing_points
    {

      cout << "INFO: Number of route points = " << def::points.size() << endl;

      Layer* rlayer = def::technology->getLayer($1);

      if ( !rlayer ) {
	cout << "ERROR: Layer " << $1 << " does not exist in technology " 
             << def::library->getTechnology()->getName() << " for library "
             << def::library->getName() << endl; 
      }

      for ( int i = 0; i < def::points.size() - 1 ; i++ ) {
	def::net->createShape(rlayer,def::points[i].first,def::points[i].second,
			      def::points[i+1].first,def::points[i+1].second);
      }

    }
    net_via
    ;

net_via:
    | STRING
    {

      ViaDef* viadef = def::technology->getViaDef($1);
      if ( !viadef ) {
	cout << "ERROR: Via master " << $1 << " does not exist in technology " 
             << def::library->getTechnology()->getName() << " for library "
             << def::library->getName() << endl; 
      }

      Point origin = def::points[def::points.size() - 1];
      def::net->createVia(viadef,origin.first,origin.second);
    }
    | STRING STRING
    ;

specialnets_section:
    SPECIALNETS NUMBER ';'
    { cout << "INFO: Processing Special nets section" << endl; }
        specialnets
    { cout << "INFO: Finished processing Special nets section" << endl; }
    END SPECIALNETS
    ;

specialnets:
    | specialnets specialnet
    | specialnet
    ;

specialnet:
    '-' STRING net_pins specialnet_properties ';'
    { cout << "INFO: Processing special net " << $2 << endl; }
    ;

specialnet_properties:
    | specialnet_properties '+' specialnet_property
    | '+' specialnet_property
    ;

specialnet_property:
    USE STRING
    | SOURCE STRING
    | POLYGON STRING points
    | RECT STRING points
    | specialnet_routes
    ;

specialnet_routes:
    specialnet_routes specialnet_route
    | specialnet_route
    ;

specialnet_route:
    net_route_status specialnet_route_shapes
    ;

specialnet_route_shapes:
    specialnet_route_shapes specialnet_route_shape
    | specialnet_route_shape
    ;

specialnet_route_shape:
    NEW STRING NUMBER point routing_points net_via
    | STRING NUMBER point routing_points net_via
    ;
 
net_route_status:
    FIXED
    | ROUTED
    ;

net_pins:
    | net_pins net_pin
    | net_pin
    ;

net_pin:
    '(' STRING STRING ')'
    { 
        cout << "INFO: DEF: Connecting pin " << $3 << " of instance " << $2 << " to net " << def::net->getName() << endl ;
        cout << "DEBUG: Pin count before connecting net " << def::cell->getInstanceByName($2)->getPins().size() << endl ; 
        def::net->connectNet(def::cell->getInstanceByName($2)->getPinByName($3));
        cout << "DEBUG: Pin count after connecting net " << def::cell->getInstanceByName($2)->getPins().size() << endl ; 
    }
    | '(' PIN STRING ')'
    {  
        cout << "INFO: DEF: Connecting port " << $3 << " to net " << def::net->getName() << endl ;
        def::net->connectNet(def::cell->getPortByName($3)); 
    }
    ;

routing_points:
    | routing_points point
    | routing_points routing_point
    | routing_point
    | point
    ;

routing_point:
    '(' NUMBER '*' ')' 
    { def::points.push_back(Point($2 * def::scale_factor,def::points[def::points.size() - 1].second));}
    | '(' '*' NUMBER ')'
    { def::points.push_back(Point(def::points[def::points.size() - 1].first, $3 * def::scale_factor));}
    ;

points:
    points point
    | point 
    ;

point:
    '(' NUMBER NUMBER ')'
    {  def::points.push_back(Point($2 * def::scale_factor,$3 * def::scale_factor)); }
    ;

boolean:
    ON
    | OFF
    ;

%%

int readDef(Library* library,string filename) {

  cout << "INFO: Reading DEF file " << filename << endl;

  def::library = library;
  def::technology = library->getTechnology();

  // open a file handle to a particular file:
  def_in = fopen(filename.c_str(), "r");

  // make sure it is valid:
  if (!def_in) {
    cout << "INFO: Failed to open DEF file " << filename << " for read!" << endl;
    return 1;
  }
        
  // parse through the input until there is no more:
  do {
    if( def_parse() ) {
      fclose(def_in);
      return 1;
    }
  } while (!feof(def_in));

  cout << "INFO: Finished reading DEF file " << filename << endl;

  return 0;
 
}

void def_error(const char *msg) {

  cout << "ERROR: DEF parse error on line " << def_line_number <<". Message :" << msg << endl;

}
