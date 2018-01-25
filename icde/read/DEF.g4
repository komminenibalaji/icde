grammar DEF;

def_file:
    version_stmt case_sens_stmt def_rules end_design
    ;

version_stmt:
    | K_VERSION NUMBER ';'
    ;

case_sens_stmt:
    | K_NAMESCASESENSITIVE K_ON ';'
    | K_NAMESCASESENSITIVE K_OFF ';'
    ;

def_rules:
    | def_rules def_rule
    | def_rule
    ;

def_rule:
    design_section
    | assertions_section
    | blockage_section
    | comps_section
    | constraint_section
    | extension_section
    | fill_section
    | comps_maskShift_section
    | floorplan_contraints_section
    | groups_section
    | iotiming_section
    | nets_section
    | nondefaultrule_section
    | partitions_section
    | pin_props_section
    | regions_section
    | scanchains_section
    | slot_section
    | snets_section
    | styles_section
    | timingdisables_section
    | via_section
    ;

design_section:
    array_name
    | bus_bit_chars
    | canplace
    | cannotoccupy
    | design_name
    | die_area
    | divider_char
    | floorplan_name
    | gcellgrid
    | history
    | pin_cap_rule
    | pin_rule
    | prop_def_section
    | row_rule
    | tech_name
    | tracks_rule
    | units
    ;

design_name:
    K_DESIGN T_STRING ';'
    ;

end_design:
    K_END K_DESIGN
    ;

tech_name:
    K_TECH T_STRING ';'
    ;

array_name:
    K_ARRAY T_STRING ';'
    ;

floorplan_name:
    K_FLOORPLAN T_STRING ';'
    ;

history:
    K_HISTORY
    ;

prop_def_section:
    K_PROPERTYDEFINITIONS property_defs K_END K_PROPERTYDEFINITIONS
    ;

property_defs:
    | property_defs property_def
    ;

property_def:
    K_DESIGN T_STRING property_type_and_val ';'
    | K_NET T_STRING property_type_and_val ';'
    | K_SNET T_STRING property_type_and_val ';'
    | K_REGION T_STRING property_type_and_val ';'
    | K_GROUP T_STRING property_type_and_val ';'
    | K_COMPONENT T_STRING property_type_and_val ';'
    | K_ROW T_STRING property_type_and_val ';'
    | K_COMPONENTPIN T_STRING property_type_and_val ';'
    | K_NONDEFAULTRULE T_STRING property_type_and_val ';'
    ;

property_type_and_val:
    K_INTEGER opt_range opt_num_val
    | K_REAL opt_range opt_num_val
    | K_STRING
    | K_STRING QSTRING
    | K_NAMEMAPSTRING T_STRING
    ;

opt_num_val:
    | NUMBER
    ;

units:
    K_UNITS K_DISTANCE K_MICRONS NUMBER ';'
    ;

divider_char:
    K_DIVIDERCHAR QSTRING ';'
    ;

bus_bit_chars:
    K_BUSBITCHARS QSTRING ';'
    ;

canplace:
    K_CANPLACE T_STRING NUMBER NUMBER orient K_DO NUMBER K_BY NUMBER K_STEP NUMBER NUMBER ';'
    ;

cannotoccupy:
    K_CANNOTOCCUPY T_STRING NUMBER NUMBER orient K_DO NUMBER K_BY NUMBER K_STEP NUMBER NUMBER ';'
    ;

orient:
    K_N
    | K_W
    | K_S
    | K_E
    | K_FN
    | K_FW
    | K_FS
    | K_FE
    ;

die_area:
    K_DIEAREA firstPt nextPt otherPts ';'
    ;

pin_cap_rule:
    start_def_cap pin_caps end_def_cap
    ;

start_def_cap:
    K_DEFAULTCAP NUMBER
    ;

pin_caps:
    | pin_caps pin_cap
    ;

pin_cap:
    K_MINPINS NUMBER K_WIRECAP NUMBER ';'
    ;

end_def_cap:
    K_END K_DEFAULTCAP
    ;

pin_rule:
    start_pins pins end_pins
    ;

start_pins:
    K_PINS NUMBER ';'
    ;

pins:
    | pins pin
    ;

pin:
    '-' T_STRING '+' K_NET T_STRING pin_options ';'
    ;

pin_options:
    | pin_options pin_option
    ;

pin_option:
    '+' K_SPECIAL
    | extension_stmt
    | '+' K_DIRECTION T_STRING
    | '+' K_NETEXPR QSTRING
    | '+' K_SUPPLYSENSITIVITY T_STRING
    | '+' K_GROUNDSENSITIVITY T_STRING
    | '+' K_USE use_type
    | '+' K_PORT
    | '+' K_LAYER T_STRING pin_layer_mask_opt pin_layer_spacing_opt pt pt
    | '+' K_POLYGON T_STRING pin_poly_mask_opt pin_poly_spacing_opt firstPt nextPt nextPt otherPts
    | '+' K_VIA T_STRING pin_via_mask_opt '(' NUMBER NUMBER ')'
    | placement_status pt orient
    | '+' K_ANTENNAPINPARTIALMETALAREA NUMBER pin_layer_opt
    | '+' K_ANTENNAPINPARTIALMETALSIDEAREA NUMBER pin_layer_opt
    | '+' K_ANTENNAPINGATEAREA NUMBER pin_layer_opt
    | '+' K_ANTENNAPINDIFFAREA NUMBER pin_layer_opt
    | '+' K_ANTENNAPINMAXAREACAR NUMBER K_LAYER T_STRING
    | '+' K_ANTENNAPINMAXSIDEAREACAR NUMBER K_LAYER T_STRING
    | '+' K_ANTENNAPINPARTIALCUTAREA NUMBER pin_layer_opt
    | '+' K_ANTENNAPINMAXCUTCAR NUMBER K_LAYER T_STRING
    | '+' K_ANTENNAMODEL pin_oxide
    ;

pin_layer_mask_opt:
    | K_MASK NUMBER
    ;

pin_via_mask_opt:
    | K_MASK NUMBER
    ;

pin_poly_mask_opt:
    | K_MASK NUMBER
    ;

pin_layer_spacing_opt:
    | K_SPACING NUMBER
    | K_DESIGNRULEWIDTH NUMBER
    ;

pin_poly_spacing_opt:
    | K_SPACING NUMBER
    | K_DESIGNRULEWIDTH NUMBER
    ;

pin_oxide:
    K_OXIDE1
    | K_OXIDE2
    | K_OXIDE3
    | K_OXIDE4
    ;

use_type:
    K_SIGNAL
    | K_POWER
    | K_GROUND
    | K_CLOCK
    | K_TIEOFF
    | K_ANALOG
    | K_SCAN
    | K_RESET
    ;

pin_layer_opt:
    | K_LAYER T_STRING
    ;

end_pins:
    K_END K_PINS
    ;

row_rule:
    K_ROW T_STRING T_STRING NUMBER NUMBER orient row_do_option row_options ';'
    ;

row_do_option:
    | K_DO NUMBER K_BY NUMBER row_step_option
    ;

row_step_option:
    | K_STEP NUMBER NUMBER
    ;

row_options:
    | row_options row_option
    ;

row_option:
    '+' K_PROPERTY row_prop_list
    ;

row_prop_list:
    | row_prop_list row_prop
    ;

row_prop:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

tracks_rule:
    track_start NUMBER K_DO NUMBER K_STEP NUMBER track_opts ';'
    ;

track_start:
    K_TRACKS track_type
    ;

track_type:
    K_X
    | K_Y
    ;

track_opts:
    track_mask_statement track_layer_statement
    ;

track_mask_statement:
    | K_MASK NUMBER same_mask
    ;

same_mask:
    | K_SAMEMASK
    ;

track_layer_statement:
    | K_LAYER track_layer track_layers
    ;

track_layers:
    | track_layer track_layers
    ;

track_layer:
    T_STRING
    ;

gcellgrid:
    K_GCELLGRID track_type NUMBER K_DO NUMBER K_STEP NUMBER ';'
    ;

extension_section:
    K_BEGINEXT
    ;

extension_stmt:
    '+' K_BEGINEXT
    ;

via_section:
    via via_declarations via_end
    ;

via:
    K_VIAS NUMBER ';'
    ;

via_declarations:
    | via_declarations via_declaration
    ;

via_declaration:
    '-' T_STRING layer_stmts ';'
    ;

layer_stmts:
    | layer_stmts layer_stmt
    ;

layer_stmt:
    '+' K_RECT T_STRING mask pt pt
    | '+' K_POLYGON T_STRING mask firstPt nextPt nextPt otherPts
    | '+' K_PATTERNNAME T_STRING
    | '+' K_VIARULE T_STRING '+' K_CUTSIZE NUMBER NUMBER '+' K_LAYERS T_STRING T_STRING T_STRING '+' K_CUTSPACING NUMBER NUMBER '+' K_ENCLOSURE NUMBER NUMBER NUMBER NUMBER
    | layer_viarule_opts
    | extension_stmt
    ;

layer_viarule_opts:
    '+' K_ROWCOL NUMBER NUMBER
    | '+' K_ORIGIN NUMBER NUMBER
    | '+' K_OFFSET NUMBER NUMBER NUMBER NUMBER
    | '+' K_PATTERN T_STRING
    ;

firstPt:
    pt
    ;

nextPt:
    pt
    ;

otherPts:
    | otherPts nextPt
    ;

pt:
    '(' NUMBER NUMBER ')'
    | '(' '*' NUMBER ')'
    | '(' NUMBER '*' ')'
    | '(' '*' '*' ')'
    ;

mask:
    | '+' K_MASK NUMBER
    ;

via_end:
    K_END K_VIAS
    ;

regions_section:
    regions_start regions_stmts K_END K_REGIONS
    ;

regions_start:
    K_REGIONS NUMBER ';'
    ;

regions_stmts:
    | regions_stmts regions_stmt
    ;

regions_stmt:
    '-' T_STRING rect_list region_options ';'
    ;

rect_list:
    pt pt
    | rect_list pt pt
    ;

region_options:
    | region_options region_option
    ;

region_option:
    '+' K_PROPERTY region_prop_list
    | '+' K_TYPE region_type
    ;

region_prop_list:
    | region_prop_list region_prop
    ;

region_prop:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

region_type:
    K_FENCE
    | K_GUIDE
    ;

comps_maskShift_section:
    K_COMPSMASKSHIFT layer_statement ';'
    ;

comps_section:
    start_comps comps_rule end_comps
    ;

start_comps:
    K_COMPS NUMBER ';'
    | K_COMPONENTS NUMBER ';'
    ;

layer_statement:
    | layer_statement maskLayer
    ;

maskLayer:
    T_STRING
    ;

comps_rule:
    | comps_rule comp
    ;

comp:
    comp_start comp_options ';'
    ;

comp_start:
    comp_id_and_name comp_net_list
    ;

comp_id_and_name:
    '-' T_STRING T_STRING
    ;

comp_net_list:
    | comp_net_list '*'
    | comp_net_list T_STRING
    ;

comp_options:
    | comp_options comp_option
    ;

comp_option:
    comp_generate
    | comp_source
    | comp_type
    | weight
    | maskShift
    | comp_foreign
    | comp_region
    | comp_eeq
    | comp_halo
    | comp_routehalo
    | comp_property
    | comp_extension_stmt
    ;

comp_extension_stmt:
    extension_stmt
    ;

comp_eeq:
    '+' K_EEQMASTER T_STRING
    ;

comp_generate:
    '+' K_COMP_GEN T_STRING opt_pattern
    ;

opt_pattern:
    | T_STRING
    ;

comp_source:
    '+' K_SOURCE source_type
    ;

source_type:
    K_NETLIST
    | K_DIST
    | K_USER
    | K_TIMING
    ;

comp_region:
    comp_region_start comp_pnt_list
    | comp_region_start T_STRING
    ;

comp_pnt_list:
    pt pt
    | comp_pnt_list pt pt
    ;

comp_halo:
    '+' K_HALO halo_soft NUMBER NUMBER NUMBER NUMBER
    ;

halo_soft:
    | K_SOFT
    ;

comp_routehalo:
    '+' K_ROUTEHALO NUMBER T_STRING T_STRING
    ;

comp_property:
    '+' K_PROPERTY comp_prop_list
    ;

comp_prop_list:
    comp_prop
    | comp_prop_list comp_prop
    ;

comp_prop:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

comp_region_start:
    '+' K_REGION
    ;

comp_foreign:
    '+' K_FOREIGN T_STRING opt_paren orient
    ;

opt_paren:
    pt
    | NUMBER NUMBER
    ;

comp_type:
    placement_status pt orient
    | '+' K_UNPLACED
    | '+' K_UNPLACED pt orient
    ;

maskShift:
    '+' K_MASKSHIFT T_STRING
    ;

placement_status:
    '+' K_FIXED
    | '+' K_COVER
    | '+' K_PLACED
    ;

weight:
    '+' K_WEIGHT NUMBER
    ;

end_comps:
    K_END K_COMPS
    | K_END K_COMPONENTS
    ;

nets_section:
    start_nets net_rules end_nets
    ;

start_nets:
    K_NETS NUMBER ';'
    ;

net_rules:
    | net_rules one_net
    ;

one_net:
    net_and_connections net_options ';'
    ;

net_and_connections:
    net_start
    ;

net_start:
    '-' net_name
    ;

net_name:
    T_STRING net_connections
    | K_MUSTJOIN '(' T_STRING T_STRING ')'
    ;

net_connections:
    | net_connections net_connection
    ;

net_connection:
    '(' T_STRING T_STRING conn_opt ')'
    | '(' '*' T_STRING conn_opt ')'
    | '(' K_PIN T_STRING conn_opt ')'
    ;

conn_opt:
    | extension_stmt
    | '+' K_SYNTHESIZED
    ;

net_options:
    | net_options net_option
    ;

net_option:
    '+' net_type paths
    | '+' K_SOURCE netsource_type
    | '+' K_FIXEDBUMP
    | '+' K_FREQUENCY NUMBER
    | '+' K_ORIGINAL T_STRING
    | '+' K_PATTERN pattern_type
    | '+' K_WEIGHT NUMBER
    | '+' K_XTALK NUMBER
    | '+' K_ESTCAP NUMBER
    | '+' K_USE use_type
    | '+' K_STYLE NUMBER
    | '+' K_NONDEFAULTRULE T_STRING
    | vpin_stmt
    | '+' K_SHIELDNET T_STRING
    | '+' K_NOSHIELD paths
    | '+' K_SUBNET T_STRING comp_names subnet_options
    | '+' K_PROPERTY net_prop_list
    | extension_stmt
    ;

net_prop_list:
    net_prop
    | net_prop_list net_prop
    ;

net_prop:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

netsource_type:
    K_NETLIST
    | K_DIST
    | K_USER
    | K_TIMING
    | K_TEST
    ;

vpin_stmt:
    vpin_begin vpin_layer_opt pt pt vpin_options
    ;

vpin_begin:
    '+' K_VPIN T_STRING
    ;

vpin_layer_opt:
    | K_LAYER T_STRING
    ;

vpin_options:
    | vpin_status pt orient
    ;

vpin_status:
    K_PLACED
    | K_FIXED
    | K_COVER
    ;

net_type:
    K_FIXED
    | K_COVER
    | K_ROUTED
    ;

paths:
    path
    | paths new_path
    ;

new_path:
    K_NEW path
    ;

path:
    T_STRING opt_taper_style_s path_pt path_item_list
    ;

virtual_statement:
    K_VIRTUAL virtual_pt
    ;

rect_statement:
    K_RECT rect_pts
    ;

path_item_list:
    | path_item_list path_item
    ;

path_item:
    T_STRING
    | K_MASK NUMBER T_STRING
    | T_STRING orient
    | K_MASK NUMBER T_STRING orient
    | K_MASK NUMBER T_STRING K_DO NUMBER K_BY NUMBER K_STEP NUMBER NUMBER
    | T_STRING K_DO NUMBER K_BY NUMBER K_STEP NUMBER NUMBER
    | T_STRING orient K_DO NUMBER K_BY NUMBER K_STEP NUMBER NUMBER
    | K_MASK NUMBER T_STRING orient K_DO NUMBER K_BY NUMBER K_STEP NUMBER NUMBER
    | virtual_statement
    | rect_statement
    | K_MASK NUMBER K_RECT '(' NUMBER NUMBER NUMBER NUMBER ')'
    | K_MASK NUMBER path_pt
    | path_pt
    ;

path_pt:
    '(' NUMBER NUMBER ')'
    | '(' '*' NUMBER ')'
    | '(' NUMBER '*' ')'
    | '(' '*' '*' ')'
    | '(' NUMBER NUMBER NUMBER ')'
    | '(' '*' NUMBER NUMBER ')'
    | '(' NUMBER '*' NUMBER ')'
    | '(' '*' '*' NUMBER ')'
    ;

virtual_pt:
    '(' NUMBER NUMBER ')'
    | '(' '*' NUMBER ')'
    | '(' NUMBER '*' ')'
    | '(' '*' '*' ')'
    ;

rect_pts:
    '(' NUMBER NUMBER NUMBER NUMBER ')'
    ;

opt_taper_style_s:
    | opt_taper_style_s opt_taper_style
    ;

opt_taper_style:
    opt_style
    | opt_taper
    ;

opt_taper:
    K_TAPER
    | K_TAPERRULE T_STRING
    ;

opt_style:
    K_STYLE NUMBER
    ;

opt_spaths:
    | opt_spaths opt_shape_style
    ;

opt_shape_style:
    '+' K_SHAPE shape_type
    | '+' K_STYLE NUMBER
    ;

end_nets:
    K_END K_NETS
    ;

shape_type:
    K_RING
    | K_STRIPE
    | K_FOLLOWPIN
    | K_IOWIRE
    | K_COREWIRE
    | K_BLOCKWIRE
    | K_FILLWIRE
    | K_FILLWIREOPC
    | K_DRCFILL
    | K_BLOCKAGEWIRE
    | K_PADRING
    | K_BLOCKRING
    ;

snets_section:
    start_snets snet_rules end_snets
    ;

snet_rules:
    | snet_rules snet_rule
    ;

snet_rule:
    net_and_connections snet_options ';'
    ;

snet_options:
    | snet_options snet_option
    ;

snet_option:
    snet_width
    | snet_voltage
    | snet_spacing
    | snet_other_option
    ;

snet_other_option:
    '+' net_type
    | '+' net_type spaths
    | '+' K_SHIELD T_STRING shield_layer
    | '+' K_SHAPE shape_type
    | '+' K_MASK NUMBER
    | '+' K_POLYGON T_STRING firstPt nextPt nextPt otherPts
    | '+' K_RECT T_STRING pt pt
    | '+' K_VIA T_STRING orient_pt firstPt otherPts
    | '+' K_SOURCE source_type
    | '+' K_FIXEDBUMP
    | '+' K_FREQUENCY NUMBER
    | '+' K_ORIGINAL T_STRING
    | '+' K_PATTERN pattern_type
    | '+' K_WEIGHT NUMBER
    | '+' K_ESTCAP NUMBER
    | '+' K_USE use_type
    | '+' K_STYLE NUMBER
    | '+' K_PROPERTY snet_prop_list
    | extension_stmt
    ;

orient_pt:
    | K_N
    | K_W
    | K_S
    | K_E
    | K_FN
    | K_FW
    | K_FS
    | K_FE
    ;

shield_layer:
    | spaths
    ;

snet_width:
    '+' K_WIDTH T_STRING NUMBER
    ;

snet_voltage:
    '+' K_VOLTAGE T_STRING
    ;

snet_spacing:
    '+' K_SPACING T_STRING NUMBER opt_snet_range
    ;

snet_prop_list:
    snet_prop
    | snet_prop_list snet_prop
    ;

snet_prop:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

opt_snet_range:
    | K_RANGE NUMBER NUMBER
    ;

opt_range:
    | K_RANGE NUMBER NUMBER
    ;

pattern_type:
    K_BALANCED
    | K_STEINER
    | K_TRUNK
    | K_WIREDLOGIC
    ;

spaths:
    spath
    | spaths snew_path
    ;

snew_path:
    K_NEW spath
    ;

spath:
    T_STRING width opt_spaths path_pt path_item_list
    ;

width:
    NUMBER
    ;

start_snets:
    K_SNETS NUMBER ';'
    ;

end_snets:
    K_END K_SNETS
    ;

groups_section:
    groups_start group_rules groups_end
    ;

groups_start:
    K_GROUPS NUMBER ';'
    ;

group_rules:
    | group_rules group_rule
    ;

group_rule:
    start_group group_members group_options ';'
    ;

start_group:
    '-' T_STRING
    ;

group_members:
    | group_members group_member
    ;

group_member:
    T_STRING
    ;

group_options:
    | group_options group_option
    ;

group_option:
    '+' K_SOFT group_soft_options
    | '+' K_PROPERTY group_prop_list
    | '+' K_REGION group_region
    | extension_stmt
    ;

group_region:
    pt pt
    | T_STRING
    ;

group_prop_list:
    | group_prop_list group_prop
    ;

group_prop:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

group_soft_options:
    | group_soft_options group_soft_option
    ;

group_soft_option:
    K_MAXX NUMBER
    | K_MAXY NUMBER
    | K_MAXHALFPERIMETER NUMBER
    ;

groups_end:
    K_END K_GROUPS
    ;

assertions_section:
    assertions_start constraint_rules assertions_end
    ;

constraint_section:
    constraints_start constraint_rules constraints_end
    ;

assertions_start:
    K_ASSERTIONS NUMBER ';'
    ;

constraints_start:
    K_CONSTRAINTS NUMBER ';'
    ;

constraint_rules:
    | constraint_rules constraint_rule
    ;

constraint_rule:
    operand_rule
    | wiredlogic_rule
    ;

operand_rule:
    '-' operand delay_specs ';'
    ;

operand:
    K_NET T_STRING
    | K_PATH T_STRING T_STRING T_STRING T_STRING
    | K_SUM '(' operand_list ')'
    | K_DIFF '(' operand_list ')'
    ;

operand_list:
    operand
    | operand_list operand
    | operand_list ',' operand
    ;

wiredlogic_rule:
    '-' K_WIREDLOGIC T_STRING opt_plus K_MAXDIST NUMBER ';'
    ;

opt_plus:
    | '+'
    ;

delay_specs:
    | delay_specs delay_spec
    ;

delay_spec:
    '+' K_RISEMIN NUMBER
    | '+' K_RISEMAX NUMBER
    | '+' K_FALLMIN NUMBER
    | '+' K_FALLMAX NUMBER
    ;

constraints_end:
    K_END K_CONSTRAINTS
    ;

assertions_end:
    K_END K_ASSERTIONS
    ;

scanchains_section:
    scanchain_start scanchain_rules scanchain_end
    ;

scanchain_start:
    K_SCANCHAINS NUMBER ';'
    ;

scanchain_rules:
    | scanchain_rules scan_rule
    ;

scan_rule:
    start_scan scan_members ';'
    ;

start_scan:
    '-' T_STRING
    ;

scan_members:
    | scan_members scan_member
    ;

opt_pin:
    | T_STRING
    ;

scan_member:
    '+' K_START T_STRING opt_pin
    | '+' K_FLOATING floating_inst_list
    | '+' K_ORDERED ordered_inst_list
    | '+' K_STOP T_STRING opt_pin
    | '+' K_COMMONSCANPINS opt_common_pins
    | '+' K_PARTITION T_STRING partition_maxbits
    | extension_stmt
    ;

opt_common_pins:
    | '(' T_STRING T_STRING ')'
    | '(' T_STRING T_STRING ')' '(' T_STRING T_STRING ')'
    ;

floating_inst_list:
    | floating_inst_list one_floating_inst
    ;

one_floating_inst:
    T_STRING floating_pins
    ;

floating_pins:
    | '(' T_STRING T_STRING ')'
    | '(' T_STRING T_STRING ')' '(' T_STRING T_STRING ')'
    | '(' T_STRING T_STRING ')' '(' T_STRING T_STRING ')' '(' T_STRING T_STRING ')'
    ;

ordered_inst_list:
    | ordered_inst_list one_ordered_inst
    ;

one_ordered_inst:
    T_STRING ordered_pins
    ;

ordered_pins:
    | '(' T_STRING T_STRING ')'
    | '(' T_STRING T_STRING ')' '(' T_STRING T_STRING ')'
    | '(' T_STRING T_STRING ')' '(' T_STRING T_STRING ')' '(' T_STRING T_STRING ')'
    ;

partition_maxbits:
    | K_MAXBITS NUMBER
    ;

scanchain_end:
    K_END K_SCANCHAINS
    ;

iotiming_section:
    iotiming_start iotiming_rules iotiming_end
    ;

iotiming_start:
    K_IOTIMINGS NUMBER ';'
    ;

iotiming_rules:
    | iotiming_rules iotiming_rule
    ;

iotiming_rule:
    start_iotiming iotiming_members ';'
    ;

start_iotiming:
    '-' '(' T_STRING T_STRING ')'
    ;

iotiming_members:
    | iotiming_members iotiming_member
    ;

iotiming_member:
    '+' risefall K_VARIABLE NUMBER NUMBER
    | '+' risefall K_SLEWRATE NUMBER NUMBER
    | '+' K_CAPACITANCE NUMBER
    | '+' K_DRIVECELL T_STRING iotiming_drivecell_opt
    | extension_stmt
    ;

iotiming_drivecell_opt:
    iotiming_frompin K_TOPIN T_STRING iotiming_parallel
    ;

iotiming_frompin:
    | K_FROMPIN T_STRING
    ;

iotiming_parallel:
    | K_PARALLEL NUMBER
    ;

risefall:
    K_RISE
    | K_FALL
    ;

iotiming_end:
    K_END K_IOTIMINGS
    ;

floorplan_contraints_section:
    fp_start fp_stmts K_END K_FPC
    ;

fp_start:
    K_FPC NUMBER ';'
    ;

fp_stmts:
    | fp_stmts fp_stmt
    ;

fp_stmt:
    '-' T_STRING h_or_v constraint_type constrain_what_list ';'
    ;

h_or_v:
    K_HORIZONTAL
    | K_VERTICAL
    ;

constraint_type:
    K_ALIGN
    | K_MAX NUMBER
    | K_MIN NUMBER
    | K_EQUAL NUMBER
    ;

constrain_what_list:
    | constrain_what_list constrain_what
    ;

constrain_what:
    '+' K_BOTTOMLEFT row_or_comp_list
    | '+' K_TOPRIGHT row_or_comp_list
    ;

row_or_comp_list:
    | row_or_comp_list row_or_comp
    ;

row_or_comp:
    '(' K_ROWS T_STRING ')'
    | '(' K_COMPS T_STRING ')'
    ;

timingdisables_section:
    timingdisables_start timingdisables_rules timingdisables_end
    ;

timingdisables_start:
    K_TIMINGDISABLES NUMBER ';'
    ;

timingdisables_rules:
    | timingdisables_rules timingdisables_rule
    ;

timingdisables_rule:
    '-' K_FROMPIN T_STRING T_STRING K_TOPIN T_STRING T_STRING ';'
    | '-' K_THRUPIN T_STRING T_STRING ';'
    | '-' K_MACRO T_STRING td_macro_option ';'
    | '-' K_REENTRANTPATHS ';'
    ;

td_macro_option:
    K_FROMPIN T_STRING K_TOPIN T_STRING
    | K_THRUPIN T_STRING
    ;

timingdisables_end:
    K_END K_TIMINGDISABLES
    ;

partitions_section:
    partitions_start partition_rules partitions_end
    ;

partitions_start:
    K_PARTITIONS NUMBER ';'
    ;

partition_rules:
    | partition_rules partition_rule
    ;

partition_rule:
    start_partition partition_members ';'
    ;

start_partition:
    '-' T_STRING turnoff
    ;

turnoff:
    | K_TURNOFF turnoff_setup turnoff_hold
    ;

turnoff_setup:
    | K_SETUPRISE
    | K_SETUPFALL
    ;

turnoff_hold:
    | K_HOLDRISE
    | K_HOLDFALL
    ;

partition_members:
    | partition_members partition_member
    ;

partition_member:
    '+' K_FROMCLOCKPIN T_STRING T_STRING risefall minmaxpins
    | '+' K_FROMCOMPPIN T_STRING T_STRING risefallminmax2_list
    | '+' K_FROMIOPIN T_STRING risefallminmax1_list
    | '+' K_TOCLOCKPIN T_STRING T_STRING risefall minmaxpins
    | '+' K_TOCOMPPIN T_STRING T_STRING risefallminmax2_list
    | '+' K_TOIOPIN T_STRING risefallminmax1_list
    | extension_stmt
    ;

minmaxpins:
    min_or_max_list K_PINS pin_list
    ;

min_or_max_list:
    | min_or_max_list min_or_max_member
    ;

min_or_max_member:
    K_MIN NUMBER NUMBER
    | K_MAX NUMBER NUMBER
    ;

pin_list:
    | pin_list T_STRING
    ;

risefallminmax1_list:
    | risefallminmax1_list risefallminmax1
    ;

risefallminmax1:
    K_RISEMIN NUMBER
    | K_FALLMIN NUMBER
    | K_RISEMAX NUMBER
    | K_FALLMAX NUMBER
    ;

risefallminmax2_list:
    risefallminmax2
    | risefallminmax2_list risefallminmax2
    ;

risefallminmax2:
    K_RISEMIN NUMBER NUMBER
    | K_FALLMIN NUMBER NUMBER
    | K_RISEMAX NUMBER NUMBER
    | K_FALLMAX NUMBER NUMBER
    ;

partitions_end:
    K_END K_PARTITIONS
    ;

comp_names:
    | comp_names comp_name
    ;

comp_name:
    '(' T_STRING T_STRING subnet_opt_syn ')'
    ;

subnet_opt_syn:
    | '+' K_SYNTHESIZED
    ;

subnet_options:
    | subnet_options subnet_option
    ;

subnet_option:
    subnet_type paths
    | K_NONDEFAULTRULE T_STRING
    ;

subnet_type:
    K_FIXED
    | K_COVER
    | K_ROUTED
    | K_NOSHIELD
    ;

pin_props_section:
    begin_pin_props pin_prop_list end_pin_props
    ;

begin_pin_props:
    K_PINPROPERTIES NUMBER opt_semi
    ;

opt_semi:
    | ';'
    ;

end_pin_props:
    K_END K_PINPROPERTIES
    ;

pin_prop_list:
    | pin_prop_list pin_prop_terminal
    ;

pin_prop_terminal:
    '-' T_STRING T_STRING pin_prop_options ';'
    ;

pin_prop_options:
    | pin_prop_options pin_prop
    ;

pin_prop:
    '+' K_PROPERTY pin_prop_name_value_list
    ;

pin_prop_name_value_list:
    | pin_prop_name_value_list pin_prop_name_value
    ;

pin_prop_name_value:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

blockage_section:
    blockage_start blockage_defs blockage_end
    ;

blockage_start:
    K_BLOCKAGES NUMBER ';'
    ;

blockage_end:
    K_END K_BLOCKAGES
    ;

blockage_defs:
    | blockage_defs blockage_def
    ;

blockage_def:
    blockage_rule rectPoly_blockage rectPoly_blockage_rules ';'
    ;

blockage_rule:
    '-' K_LAYER T_STRING layer_blockage_rules
    | '-' K_PLACEMENT placement_comp_rules
    ;

layer_blockage_rules:
    | layer_blockage_rules layer_blockage_rule
    ;

layer_blockage_rule:
    '+' K_SPACING NUMBER
    | '+' K_DESIGNRULEWIDTH NUMBER
    | mask_blockage_rule
    | comp_blockage_rule
    ;

mask_blockage_rule:
    '+' K_MASK NUMBER
    ;

comp_blockage_rule:
    '+' K_COMPONENT T_STRING
    | '+' K_SLOTS
    | '+' K_FILLS
    | '+' K_PUSHDOWN
    | '+' K_EXCEPTPGNET
    ;

placement_comp_rules:
    | placement_comp_rules placement_comp_rule
    ;

placement_comp_rule:
    '+' K_COMPONENT T_STRING
    | '+' K_PUSHDOWN
    | '+' K_SOFT
    | '+' K_PARTIAL NUMBER
    ;

rectPoly_blockage_rules:
    | rectPoly_blockage_rules rectPoly_blockage
    ;

rectPoly_blockage:
    K_RECT pt pt
    | K_POLYGON firstPt nextPt nextPt otherPts
    ;

slot_section:
    slot_start slot_defs slot_end
    ;

slot_start:
    K_SLOTS NUMBER ';'
    ;

slot_end:
    K_END K_SLOTS
    ;

slot_defs:
    | slot_defs slot_def
    ;

slot_def:
    slot_rule geom_slot_rules ';'
    ;

slot_rule:
    '-' K_LAYER T_STRING geom_slot
    ;

geom_slot_rules:
    | geom_slot_rules geom_slot
    ;

geom_slot:
    K_RECT pt pt
    | K_POLYGON firstPt nextPt nextPt otherPts
    ;

fill_section:
    fill_start fill_defs fill_end
    ;

fill_start:
    K_FILLS NUMBER ';'
    ;

fill_end:
    K_END K_FILLS
    ;

fill_defs:
    | fill_defs fill_def
    ;

fill_def:
    fill_rule geom_fill_rules ';'
    | '-' K_VIA T_STRING fill_via_mask_opc_opt fill_via_pt ';'
    ;

fill_rule:
    '-' K_LAYER T_STRING fill_layer_mask_opc_opt geom_fill
    ;

geom_fill_rules:
    | geom_fill_rules geom_fill
    ;

geom_fill:
    K_RECT pt pt
    | K_POLYGON firstPt nextPt nextPt otherPts
    ;

fill_layer_mask_opc_opt:
    | fill_layer_mask_opc_opt opt_mask_opc_l
    ;

opt_mask_opc_l:
    fill_layer_opc
    | fill_mask
    ;

fill_layer_opc:
    '+' K_OPC
    ;

fill_via_pt:
    firstPt otherPts
    ;

fill_via_mask_opc_opt:
    | fill_via_mask_opc_opt opt_mask_opc
    ;

opt_mask_opc:
    fill_via_opc
    | fill_viaMask
    ;

fill_via_opc:
    '+' K_OPC
    ;

fill_mask:
    '+' K_MASK NUMBER
    ;

fill_viaMask:
    '+' K_MASK NUMBER
    ;

nondefaultrule_section:
    nondefault_start nondefault_def nondefault_defs nondefault_end
    ;

nondefault_start:
    K_NONDEFAULTRULES NUMBER ';'
    ;

nondefault_end:
    K_END K_NONDEFAULTRULES
    ;

nondefault_defs:
    | nondefault_defs nondefault_def
    ;

nondefault_def:
    '-' T_STRING nondefault_options ';'
    ;

nondefault_options:
    | nondefault_options nondefault_option
    ;

nondefault_option:
    '+' K_HARDSPACING
    | '+' K_LAYER T_STRING K_WIDTH NUMBER nondefault_layer_options
    | '+' K_VIA T_STRING
    | '+' K_VIARULE T_STRING
    | '+' K_MINCUTS T_STRING NUMBER
    | nondefault_prop_opt
    ;

nondefault_layer_options:
    | nondefault_layer_options nondefault_layer_option
    ;

nondefault_layer_option:
    K_DIAGWIDTH NUMBER
    | K_SPACING NUMBER
    | K_WIREEXT NUMBER
    ;

nondefault_prop_opt:
    '+' K_PROPERTY nondefault_prop_list
    ;

nondefault_prop_list:
    | nondefault_prop_list nondefault_prop
    ;

nondefault_prop:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

styles_section:
    styles_start styles_rules styles_end
    ;

styles_start:
    K_STYLES NUMBER ';'
    ;

styles_end:
    K_END K_STYLES
    ;

styles_rules:
    | styles_rules styles_rule
    ;

styles_rule:
    '-' K_STYLE NUMBER firstPt nextPt otherPts ';'
    ;

K_HISTORY                      : 'HISTORY' ;
K_NAMESCASESENSITIVE           : 'NAMESCASESENSITIVE' ;
K_DESIGN                       : 'DESIGN' ;
K_VIAS                         : 'VIAS' ;
K_TECH                         : 'TECH' ;
K_UNITS                        : 'UNITS' ;
K_ARRAY                        : 'ARRAY' ;
K_FLOORPLAN                    : 'FLOORPLAN' ;
K_SITE                         : 'SITE' ;
K_CANPLACE                     : 'CANPLACE' ;
K_CANNOTOCCUPY                 : 'CANNOTOCCUPY' ;
K_DIEAREA                      : 'DIEAREA' ;
K_PINS                         : 'PINS' ;
K_DEFAULTCAP                   : 'DEFAULTCAP' ;
K_MINPINS                      : 'MINPINS' ;
K_WIRECAP                      : 'WIRECAP' ;
K_TRACKS                       : 'TRACKS' ;
K_GCELLGRID                    : 'GCELLGRID' ;
K_DO                           : 'DO' ;
K_BY                           : 'BY' ;
K_STEP                         : 'STEP' ;
K_LAYER                        : 'LAYER' ;
K_ROW                          : 'ROW' ;
K_RECT                         : 'RECT' ;
K_COMPS                        : 'COMPS' ;
K_COMP_GEN                     : 'COMP_GEN' ;
K_SOURCE                       : 'SOURCE' ;
K_WEIGHT                       : 'WEIGHT' ;
K_EEQMASTER                    : 'EEQMASTER' ;
K_FIXED                        : 'FIXED' ;
K_COVER                        : 'COVER' ;
K_UNPLACED                     : 'UNPLACED' ;
K_PLACED                       : 'PLACED' ;
K_FOREIGN                      : 'FOREIGN' ;
K_REGION                       : 'REGION' ;
K_REGIONS                      : 'REGIONS' ;
K_NETS                         : 'NETS' ;
K_START_NET                    : 'START_NET' ;
K_MUSTJOIN                     : 'MUSTJOIN' ;
K_ORIGINAL                     : 'ORIGINAL' ;
K_USE                          : 'USE' ;
K_STYLE                        : 'STYLE' ;
K_PATTERN                      : 'PATTERN' ;
K_PATTERNNAME                  : 'PATTERNNAME' ;
K_ESTCAP                       : 'ESTCAP' ;
K_ROUTED                       : 'ROUTED' ;
K_NEW                          : 'NEW' ;
K_SNETS                        : 'SNETS' ;
K_SHAPE                        : 'SHAPE' ;
K_WIDTH                        : 'WIDTH' ;
K_VOLTAGE                      : 'VOLTAGE' ;
K_SPACING                      : 'SPACING' ;
K_NONDEFAULTRULE               : 'NONDEFAULTRULE' ;
K_NONDEFAULTRULES              : 'NONDEFAULTRULES' ;
K_N                            : 'N' ;
K_S                            : 'S' ;
K_E                            : 'E' ;
K_W                            : 'W' ;
K_FN                           : 'FN' ;
K_FE                           : 'FE' ;
K_FS                           : 'FS' ;
K_FW                           : 'FW' ;
K_GROUPS                       : 'GROUPS' ;
K_GROUP                        : 'GROUP' ;
K_SOFT                         : 'SOFT' ;
K_MAXX                         : 'MAXX' ;
K_MAXY                         : 'MAXY' ;
K_MAXHALFPERIMETER             : 'MAXHALFPERIMETER' ;
K_CONSTRAINTS                  : 'CONSTRAINTS' ;
K_NET                          : 'NET' ;
K_PATH                         : 'PATH' ;
K_SUM                          : 'SUM' ;
K_DIFF                         : 'DIFF' ;
K_SCANCHAINS                   : 'SCANCHAINS' ;
K_START                        : 'START' ;
K_FLOATING                     : 'FLOATING' ;
K_ORDERED                      : 'ORDERED' ;
K_STOP                         : 'STOP' ;
K_IN                           : 'IN' ;
K_OUT                          : 'OUT' ;
K_RISEMIN                      : 'RISEMIN' ;
K_RISEMAX                      : 'RISEMAX' ;
K_FALLMIN                      : 'FALLMIN' ;
K_FALLMAX                      : 'FALLMAX' ;
K_WIREDLOGIC                   : 'WIREDLOGIC' ;
K_MAXDIST                      : 'MAXDIST' ;
K_ASSERTIONS                   : 'ASSERTIONS' ;
K_DISTANCE                     : 'DISTANCE' ;
K_MICRONS                      : 'MICRONS' ;
K_END                          : 'END' ;
K_IOTIMINGS                    : 'IOTIMINGS' ;
K_RISE                         : 'RISE' ;
K_FALL                         : 'FALL' ;
K_VARIABLE                     : 'VARIABLE' ;
K_SLEWRATE                     : 'SLEWRATE' ;
K_CAPACITANCE                  : 'CAPACITANCE' ;
K_DRIVECELL                    : 'DRIVECELL' ;
K_FROMPIN                      : 'FROMPIN' ;
K_TOPIN                        : 'TOPIN' ;
K_PARALLEL                     : 'PARALLEL' ;
K_TIMINGDISABLES               : 'TIMINGDISABLES' ;
K_THRUPIN                      : 'THRUPIN' ;
K_MACRO                        : 'MACRO' ;
K_PARTITIONS                   : 'PARTITIONS' ;
K_TURNOFF                      : 'TURNOFF' ;
K_FROMCLOCKPIN                 : 'FROMCLOCKPIN' ;
K_FROMCOMPPIN                  : 'FROMCOMPPIN' ;
K_FROMIOPIN                    : 'FROMIOPIN' ;
K_TOCLOCKPIN                   : 'TOCLOCKPIN' ;
K_TOCOMPPIN                    : 'TOCOMPPIN' ;
K_TOIOPIN                      : 'TOIOPIN' ;
K_SETUPRISE                    : 'SETUPRISE' ;
K_SETUPFALL                    : 'SETUPFALL' ;
K_HOLDRISE                     : 'HOLDRISE' ;
K_HOLDFALL                     : 'HOLDFALL' ;
K_VPIN                         : 'VPIN' ;
K_SUBNET                       : 'SUBNET' ;
K_XTALK                        : 'XTALK' ;
K_PIN                          : 'PIN' ;
K_SYNTHESIZED                  : 'SYNTHESIZED' ;
K_DEFINE                       : 'DEFINE' ;
K_DEFINES                      : 'DEFINES' ;
K_DEFINEB                      : 'DEFINEB' ;
K_IF                           : 'IF' ;
K_THEN                         : 'THEN' ;
K_ELSE                         : 'ELSE' ;
K_FALSE                        : 'FALSE' ;
K_TRUE                         : 'TRUE' ;
K_EQ                           : 'EQ' ;
K_NE                           : 'NE' ;
K_LE                           : 'LE' ;
K_LT                           : 'LT' ;
K_GE                           : 'GE' ;
K_GT                           : 'GT' ;
K_OR                           : 'OR' ;
K_AND                          : 'AND' ;
K_NOT                          : 'NOT' ;
K_SPECIAL                      : 'SPECIAL' ;
K_DIRECTION                    : 'DIRECTION' ;
K_RANGE                        : 'RANGE' ;
K_FPC                          : 'FPC' ;
K_HORIZONTAL                   : 'HORIZONTAL' ;
K_VERTICAL                     : 'VERTICAL' ;
K_ALIGN                        : 'ALIGN' ;
K_MIN                          : 'MIN' ;
K_MAX                          : 'MAX' ;
K_EQUAL                        : 'EQUAL' ;
K_BOTTOMLEFT                   : 'BOTTOMLEFT' ;
K_TOPRIGHT                     : 'TOPRIGHT' ;
K_ROWS                         : 'ROWS' ;
K_TAPER                        : 'TAPER' ;
K_TAPERRULE                    : 'TAPERRULE' ;
K_VERSION                      : 'VERSION' ;
K_DIVIDERCHAR                  : 'DIVIDERCHAR' ;
K_BUSBITCHARS                  : 'BUSBITCHARS' ;
K_PROPERTYDEFINITIONS          : 'PROPERTYDEFINITIONS' ;
K_STRING                       : 'STRING' ;
K_REAL                         : 'REAL' ;
K_INTEGER                      : 'INTEGER' ;
K_PROPERTY                     : 'PROPERTY' ;
K_BEGINEXT                     : 'BEGINEXT' ;
K_ENDEXT                       : 'ENDEXT' ;
K_NAMEMAPSTRING                : 'NAMEMAPSTRING' ;
K_ON                           : 'ON' ;
K_OFF                          : 'OFF' ;
K_X                            : 'X' ;
K_Y                            : 'Y' ;
K_COMPSMASKSHIFT               : 'COMPSMASKSHIFT' ;
K_COMPONENTS                   : 'COMPONENTS' ;
K_COMPONENT                    : 'COMPONENT' ;
K_MASKSHIFT                    : 'MASKSHIFT' ;
K_SAMEMASK                     : 'SAMEMASK' ;
K_MASK                         : 'MASK' ;
K_PINPROPERTIES                : 'PINPROPERTIES' ;
K_TEST                         : 'TEST' ;
K_COMMONSCANPINS               : 'COMMONSCANPINS' ;
K_SNET                         : 'SNET' ;
K_COMPONENTPIN                 : 'COMPONENTPIN' ;
K_REENTRANTPATHS               : 'REENTRANTPATHS' ;
K_SHIELD                       : 'SHIELD' ;
K_SHIELDNET                    : 'SHIELDNET' ;
K_NOSHIELD                     : 'NOSHIELD' ;
K_VIRTUAL                      : 'VIRTUAL' ;
K_ANTENNAPINPARTIALMETALAREA   : 'ANTENNAPINPARTIALMETALAREA' ;
K_ANTENNAPINPARTIALMETALSIDEAREA : 'ANTENNAPINPARTIALMETALSIDEAREA' ;
K_ANTENNAPINGATEAREA           : 'ANTENNAPINGATEAREA' ;
K_ANTENNAPINDIFFAREA           : 'ANTENNAPINDIFFAREA' ;
K_ANTENNAPINMAXAREACAR         : 'ANTENNAPINMAXAREACAR' ;
K_ANTENNAPINMAXSIDEAREACAR     : 'ANTENNAPINMAXSIDEAREACAR' ;
K_ANTENNAPINPARTIALCUTAREA     : 'ANTENNAPINPARTIALCUTAREA' ;
K_ANTENNAPINMAXCUTCAR          : 'ANTENNAPINMAXCUTCAR' ;
K_SIGNAL                       : 'SIGNAL' ;
K_POWER                        : 'POWER' ;
K_GROUND                       : 'GROUND' ;
K_CLOCK                        : 'CLOCK' ;
K_TIEOFF                       : 'TIEOFF' ;
K_ANALOG                       : 'ANALOG' ;
K_SCAN                         : 'SCAN' ;
K_RESET                        : 'RESET' ;
K_RING                         : 'RING' ;
K_STRIPE                       : 'STRIPE' ;
K_FOLLOWPIN                    : 'FOLLOWPIN' ;
K_IOWIRE                       : 'IOWIRE' ;
K_COREWIRE                     : 'COREWIRE' ;
K_BLOCKWIRE                    : 'BLOCKWIRE' ;
K_FILLWIRE                     : 'FILLWIRE' ;
K_BLOCKAGEWIRE                 : 'BLOCKAGEWIRE' ;
K_PADRING                      : 'PADRING' ;
K_BLOCKRING                    : 'BLOCKRING' ;
K_BLOCKAGES                    : 'BLOCKAGES' ;
K_PLACEMENT                    : 'PLACEMENT' ;
K_SLOTS                        : 'SLOTS' ;
K_FILLS                        : 'FILLS' ;
K_PUSHDOWN                     : 'PUSHDOWN' ;
K_NETLIST                      : 'NETLIST' ;
K_DIST                         : 'DIST' ;
K_USER                         : 'USER' ;
K_TIMING                       : 'TIMING' ;
K_BALANCED                     : 'BALANCED' ;
K_STEINER                      : 'STEINER' ;
K_TRUNK                        : 'TRUNK' ;
K_FIXEDBUMP                    : 'FIXEDBUMP' ;
K_FENCE                        : 'FENCE' ;
K_FREQUENCY                    : 'FREQUENCY' ;
K_GUIDE                        : 'GUIDE' ;
K_MAXBITS                      : 'MAXBITS' ;
K_PARTITION                    : 'PARTITION' ;
K_TYPE                         : 'TYPE' ;
K_ANTENNAMODEL                 : 'ANTENNAMODEL' ;
K_DRCFILL                      : 'DRCFILL' ;
K_OXIDE1                       : 'OXIDE1' ;
K_OXIDE2                       : 'OXIDE2' ;
K_OXIDE3                       : 'OXIDE3' ;
K_OXIDE4                       : 'OXIDE4' ;
K_CUTSIZE                      : 'CUTSIZE' ;
K_CUTSPACING                   : 'CUTSPACING' ;
K_DESIGNRULEWIDTH              : 'DESIGNRULEWIDTH' ;
K_DIAGWIDTH                    : 'DIAGWIDTH' ;
K_ENCLOSURE                    : 'ENCLOSURE' ;
K_HALO                         : 'HALO' ;
K_GROUNDSENSITIVITY            : 'GROUNDSENSITIVITY' ;
K_HARDSPACING                  : 'HARDSPACING' ;
K_LAYERS                       : 'LAYERS' ;
K_MINCUTS                      : 'MINCUTS' ;
K_NETEXPR                      : 'NETEXPR' ;
K_OFFSET                       : 'OFFSET' ;
K_ORIGIN                       : 'ORIGIN' ;
K_ROWCOL                       : 'ROWCOL' ;
K_STYLES                       : 'STYLES' ;
K_POLYGON                      : 'POLYGON' ;
K_PORT                         : 'PORT' ;
K_SUPPLYSENSITIVITY            : 'SUPPLYSENSITIVITY' ;
K_VIA                          : 'VIA' ;
K_VIARULE                      : 'VIARULE' ;
K_WIREEXT                      : 'WIREEXT' ;
K_EXCEPTPGNET                  : 'EXCEPTPGNET' ;
K_FILLWIREOPC                  : 'FILLWIREOPC' ;
K_OPC                          : 'OPC' ;
K_PARTIAL                      : 'PARTIAL' ;
K_ROUTEHALO                    : 'ROUTEHALO' ;

NUMBER                         : [\-]?[0-9]+ | [\-]?[0-9]+[.][0-9]+ ;
T_STRING                       : [a-z0-9A-Z_\[\]\<\>\/]+ ;
QSTRING                        : ["][a-z0-9A-Z_\[\]\<\>\/ ;.]+["] ;

COMMENT                        : '#' ~[\n]+ '\n'  -> skip;
SPACE                          : [ \n\t] -> skip ;

