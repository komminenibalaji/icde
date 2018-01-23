grammar LEF;

main: 
    entities
    END LIBRARY
    ;

entities:
    entities entity
    | entity
    ;

entity:
    version
    | namescasesensitive
    | busbitchars
    | dividechar
    | manufacturinggrid
    | useminspacing
    | clearancemeasure
    | propertydefinitions
    | units
    | layer
    | site
    | via
    | viarule
    | spacing
    | macro
    ;

version:
    VERSION NUMBER ';'
    ;

namescasesensitive:
    NAMESCASESENSITIVE boolean ';'
    ;

busbitchars:
    BUSBITCHARS '"' STRING '"' ';'
    ;

dividechar:
    DIVIDERCHAR '"' STRING '"' ';'
    ;

manufacturinggrid:
    MANUFACTURINGGRID NUMBER ';'
    ;

propertydefinitions:
    PROPERTYDEFINITIONS
    LAYER STRING STRING ';'
    END PROPERTYDEFINITIONS
    ;

useminspacing:
    USEMINSPACING OBS boolean ';'
    | USEMINSPACING PIN boolean ';'
    ;

spacing:
    SPACING
    spacingrules
    END SPACING
    ;

spacingrules:
    spacingrules spacingrule
    | spacingrule 
    ;

spacingrule:
    STRING STRING STRING NUMBER ';'
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
    layer_overlap
    | layer_masterslice
    | layer_cut
    | layer_routing
    ;

layer_masterslice:
    layer_name    
       TYPE MASTERSLICE ';'
    layer_end
    ;

layer_overlap:
    layer_name  
       TYPE STRING ';'
    layer_end
    ;

layer_name:
    | LAYER STRING 
    ;

layer_end:
    END STRING
    ;

layer_cut:
    layer_name
        TYPE CUT ';'
        cut_layer_settings
    PROPERTY STRING NUMBER ';'
    layer_end
    ;

cut_layer_settings:
    SPACING NUMBER ';'
    ;

layer_routing:
    layer_name
        TYPE ROUTING ';'
        routing_layer_settings
    layer_end
    ;

routing_layer_settings:
    routing_layer_settings routing_layer_setting
    | routing_layer_setting
    ;

routing_layer_setting:
    DIRECTION layer_direction ';'
    | PITCH NUMBER ';'
    | WIDTH NUMBER ';'
    | SPACING NUMBER ';'
    | RESISTANCE STRING NUMBER ';'
    | CAPACITANCE STRING NUMBER ';'
    | EDGECAPACITANCE NUMBER ';'
    | PROPERTY STRING NUMBER ';'
    ;

via:
    VIA STRING DEFAULT
      via_layers
    END STRING
    ;

via_layers:    
    via_layer 
    via_layer 
    via_layer
    ;

via_layer:
    LAYER STRING ';'
      RECT NUMBER NUMBER NUMBER NUMBER ';'
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
       viarule_layer_settings         
    ;

viarule_layer_settings:
    | viarule_layer_settings viarule_layer_setting
    | viarule_layer_setting
    ;

viarule_layer_setting:
    DIRECTION layer_direction ';'
    | WIDTH NUMBER TO NUMBER ';'
    | OVERHANG NUMBER ';'
    | METALOVERHANG NUMBER ';'
    | ENCLOSURE NUMBER NUMBER ';'
    ;

viarule_cut:
    LAYER STRING ';'
       cut_layer_geometry
       SPACING NUMBER BY NUMBER ';'
    ;

cut_layer_geometry:
    RECT NUMBER NUMBER NUMBER NUMBER ';'
    ;

site:
    SITE STRING
      site_settings
    END STRING
    ;

site_settings:
    site_settings site_setting
    | site_setting
    ;

site_setting:
    CLASS STRING ';'
    | SYMMETRY STRING ';'
    | SIZE NUMBER BY NUMBER ';'
    ;

macro:
    MACRO STRING
        macro_elements     
    END STRING
    ;

macro_elements:
    macro_elements macro_element
    | macro_element
    ;

macro_element:
    macro_settings
    | macro_pins
    | macro_obs
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
    | SYMMETRY STRING STRING ';'
    | SITE STRING ';'
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
      obs_layer_geometries
    ;

obs_layer_geometries:
    obs_layer_geometries obs_layer_geometry
    | obs_layer_geometry
    ;

obs_layer_geometry:
    RECT NUMBER NUMBER NUMBER NUMBER ';'
    ;

macro_pins:
    macro_pins macro_pin
    | macro_pin
    ;

macro_pin:
    PIN STRING
        macro_pin_settings
    END STRING
    ;

macro_pin_settings:
    macro_pin_settings macro_pin_setting
    | macro_pin_setting
    ;

macro_pin_setting:
    DIRECTION macro_pin_direction ';'
    | USE STRING ';'
    | SHAPE STRING ';'
    | macro_pin_port
    ;

macro_pin_direction:
    INPUT 
    | OUTPUT 
    | INOUT
    | INPUT TRISTATE 
    | OUTPUT TRISTATE 
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
      port_layer_geometries
    ;

port_layer_geometries:
    port_layer_geometries port_layer_geometry
    | port_layer_geometry    
    ;

port_layer_geometry:
    RECT NUMBER NUMBER NUMBER NUMBER ';'
    ;

layer_direction:
    VERTICAL     
    | HORIZONTAL
    ;

boolean:
    ON
    | OFF
    ;


PROPERTYDEFINITIONS : 'PROPERTYDEFINITIONS' ;
NAMESCASESENSITIVE  : 'NAMESCASESENSITIVE' ;
MANUFACTURINGGRID   : 'MANUFACTURINGGRID' ;
CLEARANCEMEASURE    : 'CLEARANCEMEASURE' ;
USEMINSPACING       : 'USEMINSPACING' ;
DIVIDERCHAR         : 'DIVIDERCHAR' ;
BUSBITCHARS         : 'BUSBITCHARS' ;
DATABASE            : 'DATABASE' ;
PROPERTY            : 'PROPERTY' ;
MICRONS             : 'MICRONS' ;
VERSION             : 'VERSION' ;
LAYER               : 'LAYER' ;
UNITS               : 'UNITS' ;
MASTERSLICE         : 'MASTERSLICE' ;
ROUTING             : 'ROUTING' ;
EDGECAPACITANCE     : 'EDGECAPACITANCE' ;
ENCLOSURE           : 'ENCLOSURE' ;
TYPE                : 'TYPE' ;
PIN                 : 'PIN' ;
OBS                 : 'OBS' ;
END                 : 'END' ;
OFF                 : 'OFF' ;
ON                  : 'ON' ;
CUT                 : 'CUT' ;
SPACING             : 'SPACING' ;
DIRECTION           : 'DIRECTION' ; 
HORIZONTAL          : 'HORIZONTAL' ;
VERTICAL            : 'VERTICAL' ;
PITCH               : 'PITCH' ;
WIDTH               : 'WIDTH' ;
RESISTANCE          : 'RESISTANCE' ;
CAPACITANCE         : 'CAPACITANCE' ;
DEFAULT             : 'DEFAULT' ;
RECT                : 'RECT' ;
VIARULE             : 'VIARULE' ;
VIA                 : 'VIA' ;
METALOVERHANG       : 'METALOVERHANG' ;
GENERATE            : 'GENERATE' ;
OVERHANG            : 'OVERHANG' ;
SOURCE              : 'SOURCE' ;
SITE                : 'SITE' ;
SIZE                : 'SIZE' ;
CLASS               : 'CLASS' ;
SYMMETRY            : 'SYMMETRY' ;
MACRO               : 'MACRO' ;
FOREIGN             : 'FOREIGN' ;
ORIGIN              : 'ORIGIN' ;
USE                 : 'USE' ;
SHAPE               : 'SHAPE' ;
PORT                : 'PORT' ;
INPUT               : 'INPUT' ;
OUTPUT              : 'OUTPUT' ;
INOUT               : 'INOUT' ;
TRISTATE            : 'TRISTATE' ;
LIBRARY             : 'LIBRARY' ;
BY                  : 'BY' ;
TO                  : 'TO' ;

NUMBER              :  [\-]?[0-9]+ | [\-]?[0-9]+[\.][0-9]+ ;
STRING              :  [a-z,0-9,A-Z,\_,\[,\],\<,\>\/]+ ;
DASH                :  [\-] ;
SEMICOLON           :  [\;] ;
PLUS                :  [\+] ;

SPACE               : [ \n\t] -> skip ;

