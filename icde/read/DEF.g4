grammar DEF;

/*
 * Parser Rules
 */

main : 
    entities
    END DESIGN
    ;

entities :
    entities entity
    | entity
    ;

entity :
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

version :
    VERSION NUMBER SEMICOLON
    ;

design :
    DESIGN STRING SEMICOLON
    ;

namescasesensitive :
    NAMESCASESENSITIVE boolean SEMICOLON
    ;

busbitchars :
    BUSBITCHARS '"' STRING '"' SEMICOLON
    ;

dividechar :
    DIVIDERCHAR '"' STRING '"' SEMICOLON
    ;

units :
    UNITS DISTANCE MICRONS NUMBER SEMICOLON
    ;

diearea :
    DIEAREA points SEMICOLON
    ;

tracks :
    TRACKS STRING NUMBER DO NUMBER STEP NUMBER LAYER STRING SEMICOLON
    ;

components_section :
    COMPONENTS NUMBER SEMICOLON
       components    
    END COMPONENTS
    ;

components :
    | components component
    | component
    ;

component :
    DASH STRING STRING 
    component_properties SEMICOLON
    ;

component_properties :
    | component_properties PLUS component_property
    | PLUS component_property
    ;

component_property :
    PLACED point STRING 
    ;

pins_section :
    PINS NUMBER SEMICOLON
        pins
    END PINS
    ;

pins :
    | pins pin
    | pin
    ;

pin :
    DASH STRING 
    pin_properties SEMICOLON
    ;

pin_properties :
    | pin_properties PLUS pin_property 
    | PLUS pin_property 
    ;

pin_property :
    NET STRING
    | LAYER STRING point point
    | PLACED point STRING
    ;

nets_section :
    NETS NUMBER SEMICOLON
       nets
    END NETS
    ;

nets :
    | nets net
    | net
    ;

net :
    DASH STRING 
    net_pins net_properties SEMICOLON
    ;

net_properties :
    | net_properties PLUS net_property
    | PLUS net_property
    ;

net_property :
    | NONDEFAULTRULE STRING
    | net_route_status net_routes
    ;

net_routes :
    net_routes net_route_shapes
    | net_route_shapes
    ;

net_route_shapes :
    net_route_shapes NEW net_route_shape
    | net_route_shapes net_route_shape
    | NEW net_route_shape
    | net_route_shape
    ;

net_route_shape :
    STRING point routing_points
    net_via
    ;

net_via :
    | STRING
    | STRING STRING
    ;

specialnets_section :
    SPECIALNETS NUMBER SEMICOLON
        specialnets
    END SPECIALNETS
    ;

specialnets :
    | specialnets specialnet
    | specialnet
    ;

specialnet :
    DASH STRING net_pins specialnet_properties SEMICOLON
    ;

specialnet_properties :
    | specialnet_properties PLUS specialnet_property
    | PLUS specialnet_property
    ;

specialnet_property :
    USE STRING
    | SOURCE STRING
    | POLYGON STRING points
    | RECT STRING points
    | specialnet_routes
    ;

specialnet_routes :
    specialnet_routes specialnet_route
    | specialnet_route
    ;

specialnet_route :
    net_route_status specialnet_route_shapes
    ;

specialnet_route_shapes :
    specialnet_route_shapes specialnet_route_shape
    | specialnet_route_shape
    ;

specialnet_route_shape :
    NEW STRING NUMBER point routing_points net_via
    | STRING NUMBER point routing_points net_via
    ;
 
net_route_status :
    FIXED
    | ROUTED
    ;

net_pins :
    | net_pins net_pin
    | net_pin
    ;

net_pin :
    '(' STRING STRING ')'
    | '(' PIN STRING ')'
    ;

routing_points :
    | routing_points point
    | routing_points routing_point
    | routing_point
    | point
    ;

routing_point :
    '(' NUMBER '*' ')' 
    | '(' '*' NUMBER ')'
    ;

points :
    points point
    | point 
    ;

point :
    '(' NUMBER NUMBER ')'
    ;

boolean :
    ON
    | OFF
    ;


    
NAMESCASESENSITIVE  :  'NAMESCASESENSITIVE' ; 
NONDEFAULTRULE      :  'NONDEFAULTRULE' ; 
DIVIDERCHAR         :  'DIVIDERCHAR' ; 
BUSBITCHARS         :  'BUSBITCHARS' ; 
SPECIALNETS         :  'SPECIALNETS' ; 
COMPONENTS          :  'COMPONENTS' ; 
PROPERTY            :  'PROPERTY' ; 
DISTANCE            :  'DISTANCE' ; 
TRISTATE            :  'TRISTATE' ; 
DIEAREA             :  'DIEAREA' ; 
MICRONS             :  'MICRONS' ; 
VERSION             :  'VERSION' ; 
POLYGON             :  'POLYGON' ; 
ROUTED              :  'ROUTED' ; 
PLACED              :  'PLACED' ; 
FIXED               :  'FIXED' ; 
DESIGN              :  'DESIGN' ; 
TRACKS              :  'TRACKS' ; 
OUTPUT              :  'OUTPUT' ; 
SOURCE              :  'SOURCE' ;
INPUT               :  'INPUT' ; 
INOUT               :  'INOUT' ; 
LAYER               :  'LAYER' ; 
UNITS               :  'UNITS' ; 
RECT                :  'RECT' ; 
STEP                :  'STEP' ; 
NETS                :  'NETS' ; 
PINS                :  'PINS' ; 
PIN                 :  'PIN' ; 
NET                 :  'NET' ; 
NEW                 :  'NEW' ; 
END                 :  'END' ; 
USE                 :  'USE' ;
OFF                 :  'OFF' ; 
ON                  :  'ON' ; 
DO                  :  'DO' ; 
NUMBER              :  [\-]?[0-9]+ | [\-]?[0-9]+[\.][0-9]+ ;
STRING              :  [a-z,0-9,A-Z,\_,\[,\],\<,\>\/]+ ;
DASH                :  [\-] ;
SEMICOLON           :  [\;] ;
PLUS                :  [\+] ;

SPACE               : [ \n\t] -> skip ;

