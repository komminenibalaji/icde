grammar LEF;

lef_file:
    lef_rules end_library
    ;

lef_rules:
    lef_rules lef_rule
    | lef_rule
    ;

end_library:
    | K_END K_LIBRARY
    ;

lef_rule:
    version
    | busbitchars
    | case_sensitivity
    | units_section
    | layer_rule
    | via
    | viarule
    | viarule_generate
    | dividerchar
    | wireextension
    | msg_statement
    | spacing_rule
    | dielectric
    | minfeature
    | irdrop
    | site
    | macro
    | array
    | def_statement
    | nondefault_rule
    | prop_def_section
    | universalnoisemargin
    | edgeratethreshold1
    | edgeratescalefactor
    | edgeratethreshold2
    | noisetable
    | correctiontable
    | input_antenna
    | output_antenna
    | inout_antenna
    | antenna_input
    | antenna_inout
    | antenna_output
    | manufacturing
    | fixedmask
    | useminspacing
    | clearancemeasure
    | maxstack_via
    | create_file_statement
    ;

version:
    K_VERSION NUMBER ';'
    ;

int_number:
    NUMBER
    ;

dividerchar:
    K_DIVIDERCHAR QSTRING ';'
    ;

busbitchars:
    K_BUSBITCHARS QSTRING ';'
    ;


case_sensitivity:
    K_NAMESCASESENSITIVE K_ON ';'
    | K_NAMESCASESENSITIVE K_OFF ';'
    ;

wireextension:
    K_NOWIREEXTENSIONATPIN K_ON ';'
    | K_NOWIREEXTENSIONATPIN K_OFF ';'
    ;

fixedmask:
    K_FIXEDMASK ';'
    ;

manufacturing:
    K_MANUFACTURINGGRID int_number ';'
    ;

useminspacing:
    K_USEMINSPACING spacing_type spacing_value ';'
    ;

clearancemeasure:
    K_CLEARANCEMEASURE clearance_type ';'
    ;

clearance_type:
    K_MAXXY
    | K_EUCLIDEAN
    ;

spacing_type:
    K_OBS
    | K_PIN
    ;

spacing_value:
    K_ON
    | K_OFF
    ;

units_section:
    start_units units_rules K_END K_UNITS
    ;

start_units:
    K_UNITS
    ;

units_rules:
    | units_rules units_rule
    ;

units_rule:
    K_TIME K_NANOSECONDS int_number ';'
    | K_CAPACITANCE K_PICOFARADS int_number ';'
    | K_RESISTANCE K_OHMS int_number ';'
    | K_POWER K_MILLIWATTS int_number ';'
    | K_CURRENT K_MILLIAMPS int_number ';'
    | K_VOLTAGE K_VOLTS int_number ';'
    | K_DATABASE K_MICRONS int_number ';'
    | K_FREQUENCY K_MEGAHERTZ NUMBER ';'
    ;

layer_rule:
    start_layer layer_options end_layer
    ;

start_layer:
    K_LAYER T_STRING
    | K_LAYER K_OVERLAP
    ;

end_layer:
    K_END T_STRING
    | K_END K_OVERLAP
    ;

layer_options:
    | layer_options layer_option
    ;

layer_option:
    K_ARRAYSPACING layer_arraySpacing_long layer_arraySpacing_width K_CUTSPACING int_number layer_arraySpacing_arraycuts ';'
    | K_TYPE layer_type ';'
    | K_MASK int_number ';'
    | K_PITCH int_number ';'
    | K_PITCH int_number int_number ';'
    | K_DIAGPITCH int_number ';'
    | K_DIAGPITCH int_number int_number ';'
    | K_OFFSET int_number ';'
    | K_OFFSET int_number int_number ';'
    | K_DIAGWIDTH int_number ';'
    | K_DIAGSPACING int_number ';'
    | K_WIDTH int_number ';'
    | K_AREA NUMBER ';'
    | K_SPACING int_number layer_spacing_opts layer_spacing_cut_routing ';'
    | K_SPACINGTABLE K_ORTHOGONAL K_WITHIN int_number K_SPACING int_number layer_spacingtable_opts ';'
    | K_DIRECTION layer_direction ';'
    | K_RESISTANCE K_RPERSQ int_number ';'
    | K_RESISTANCE K_RPERSQ K_PWL '(' res_points ')' ';'
    | K_CAPACITANCE K_CPERSQDIST int_number ';'
    | K_CAPACITANCE K_CPERSQDIST K_PWL '(' cap_points ')' ';'
    | K_HEIGHT int_number ';'
    | K_WIREEXTENSION int_number ';'
    | K_THICKNESS int_number ';'
    | K_SHRINKAGE int_number ';'
    | K_CAPMULTIPLIER int_number ';'
    | K_EDGECAPACITANCE int_number ';'
    | K_ANTENNALENGTHFACTOR int_number ';'
    | K_CURRENTDEN int_number ';'
    | K_CURRENTDEN K_PWL '(' current_density_pwl_list ')' ';'
    | K_CURRENTDEN '(' int_number int_number ')' ';'
    | K_PROPERTY layer_prop_list ';'
    | K_ACCURRENTDENSITY layer_table_type layer_frequency
    | K_ACCURRENTDENSITY layer_table_type int_number ';'
    | K_DCCURRENTDENSITY K_AVERAGE int_number ';'
    | K_DCCURRENTDENSITY K_AVERAGE K_CUTAREA NUMBER number_list ';' dc_layer_table
    | K_DCCURRENTDENSITY K_AVERAGE K_WIDTH int_number int_number_list ';' dc_layer_table
    | K_ANTENNAAREARATIO int_number ';'
    | K_ANTENNADIFFAREARATIO layer_antenna_pwl ';'
    | K_ANTENNACUMAREARATIO int_number ';'
    | K_ANTENNACUMDIFFAREARATIO layer_antenna_pwl ';'
    | K_ANTENNAAREAFACTOR int_number layer_antenna_duo ';'
    | K_ANTENNASIDEAREARATIO int_number ';'
    | K_ANTENNADIFFSIDEAREARATIO layer_antenna_pwl ';'
    | K_ANTENNACUMSIDEAREARATIO int_number ';'
    | K_ANTENNACUMDIFFSIDEAREARATIO layer_antenna_pwl ';'
    | K_ANTENNASIDEAREAFACTOR int_number layer_antenna_duo ';'
    | K_ANTENNAMODEL layer_oxide ';'
    | K_ANTENNACUMROUTINGPLUSCUT ';'
    | K_ANTENNAGATEPLUSDIFF int_number ';'
    | K_ANTENNAAREAMINUSDIFF int_number ';'
    | K_ANTENNAAREADIFFREDUCEPWL '(' pt pt layer_diffusion_ratios ')' ';' 
    | K_SLOTWIREWIDTH int_number ';'
    | K_SLOTWIRELENGTH int_number ';'
    | K_SLOTWIDTH int_number ';'
    | K_SLOTLENGTH int_number ';'
    | K_MAXADJACENTSLOTSPACING int_number ';'
    | K_MAXCOAXIALSLOTSPACING int_number ';'
    | K_MAXEDGESLOTSPACING int_number ';'
    | K_SPLITWIREWIDTH int_number ';'
    | K_MINIMUMDENSITY int_number ';'
    | K_MAXIMUMDENSITY int_number ';'
    | K_DENSITYCHECKWINDOW int_number int_number ';'
    | K_DENSITYCHECKSTEP int_number ';'
    | K_FILLACTIVESPACING int_number ';'
    | K_MAXWIDTH int_number ';'
    | K_MINWIDTH int_number ';'
    | K_MINENCLOSEDAREA NUMBER layer_minen_width ';'
    | K_MINIMUMCUT int_number K_WIDTH int_number layer_minimumcut_within layer_minimumcut_from layer_minimumcut_length ';'
    | K_MINSTEP int_number layer_minstep_options ';'
    | K_PROTRUSIONWIDTH int_number K_LENGTH int_number K_WIDTH int_number ';'
    | K_SPACINGTABLE sp_options ';'
    | K_ENCLOSURE layer_enclosure_type_opt int_number int_number layer_enclosure_width_opt ';'
    | K_PREFERENCLOSURE layer_enclosure_type_opt int_number int_number layer_preferenclosure_width_opt ';'
    | K_RESISTANCE int_number ';'
    | K_DIAGMINEDGELENGTH int_number ';'
    | K_MINSIZE firstPt otherPts ';'
    ;

layer_arraySpacing_long:
    | K_LONGARRAY
    ;

layer_arraySpacing_width:
    | K_WIDTH int_number
    ;

layer_arraySpacing_arraycuts:
    | layer_arraySpacing_arraycut layer_arraySpacing_arraycuts
    ;

layer_arraySpacing_arraycut:
    K_ARRAYCUTS int_number K_SPACING int_number
    ;

sp_options:
    K_PARALLELRUNLENGTH int_number int_number_list K_WIDTH int_number int_number_list layer_sp_parallel_widths
    | K_TWOWIDTHS K_WIDTH int_number layer_sp_TwoWidthsPRL int_number int_number_list layer_sp_TwoWidths
    | K_INFLUENCE K_WIDTH int_number K_WITHIN int_number K_SPACING int_number layer_sp_influence_widths
    ;

layer_spacingtable_opts:
    | layer_spacingtable_opt layer_spacingtable_opts
    ;

layer_spacingtable_opt:
    K_WITHIN int_number K_SPACING int_number
    ;

layer_enclosure_type_opt:
    | K_ABOVE
    | K_BELOW
    ;

layer_enclosure_width_opt:
    | K_WIDTH int_number layer_enclosure_width_except_opt
    | K_LENGTH int_number
    ;

layer_enclosure_width_except_opt:
    | K_EXCEPTEXTRACUT int_number
    ;

layer_preferenclosure_width_opt:
    | K_WIDTH int_number
    ;

layer_minimumcut_within:
    | K_WITHIN int_number
    ;

layer_minimumcut_from:
    | K_FROMABOVE
    | K_FROMBELOW
    ;

layer_minimumcut_length:
    | K_LENGTH int_number K_WITHIN int_number
    ;

layer_minstep_options:
    | layer_minstep_options layer_minstep_option
    ;

layer_minstep_option:
    layer_minstep_type
    | K_LENGTHSUM int_number
    | K_MAXEDGES int_number
    ;

layer_minstep_type:
    K_INSIDECORNER
    | K_OUTSIDECORNER
    | K_STEP
    ;

layer_antenna_pwl:
    int_number
    | K_PWL '(' pt pt layer_diffusion_ratios ')'
    ;

layer_diffusion_ratios:
    | layer_diffusion_ratios layer_diffusion_ratio
    ;

layer_diffusion_ratio:
    pt
    ;

layer_antenna_duo:
    | K_DIFFUSEONLY
    ;

layer_table_type:
    K_PEAK
    | K_AVERAGE
    | K_RMS
    ;

layer_frequency:
    K_FREQUENCY NUMBER number_list ';' ac_layer_table_opt K_TABLEENTRIES NUMBER number_list ';'
    ;

ac_layer_table_opt:
    | K_CUTAREA NUMBER number_list ';'
    | K_WIDTH int_number int_number_list ';'
    ;

dc_layer_table:
    K_TABLEENTRIES int_number int_number_list ';'
    ;

int_number_list:
    | int_number_list int_number
    ;

number_list:
    | number_list NUMBER
    ;

layer_prop_list:
    layer_prop
    | layer_prop_list layer_prop
    ;

layer_prop:
    T_STRING T_STRING
    | T_STRING QSTRING
    | T_STRING NUMBER
    ;

current_density_pwl_list:
    current_density_pwl
    | current_density_pwl_list current_density_pwl
    ;

current_density_pwl:
    '(' int_number int_number ')'
    ;

cap_points:
    cap_point
    | cap_points cap_point
    ;

cap_point:
    '(' int_number int_number ')'
    ;

res_points:
    res_point
    | res_points res_point
    ;

res_point:
    '(' int_number int_number ')'
    ;

layer_type:
    K_ROUTING
    | K_CUT
    | K_OVERLAP
    | K_MASTERSLICE
    | K_VIRTUAL
    | K_IMPLANT
    ;

layer_direction:
    K_HORIZONTAL
    | K_VERTICAL
    | K_DIAG45
    | K_DIAG135
    ;

layer_minen_width:
    | K_WIDTH int_number
    ;

layer_oxide:
    K_OXIDE1
    | K_OXIDE2
    | K_OXIDE3
    | K_OXIDE4
    ;

layer_sp_parallel_widths:
    | layer_sp_parallel_widths layer_sp_parallel_width
    ;

layer_sp_parallel_width:
    K_WIDTH int_number int_number_list
    ;

layer_sp_TwoWidths:
    | layer_sp_TwoWidth layer_sp_TwoWidths
    ;

layer_sp_TwoWidth:
    K_WIDTH int_number layer_sp_TwoWidthsPRL int_number int_number_list
    ;

layer_sp_TwoWidthsPRL:
    | K_PRL int_number
    ;

layer_sp_influence_widths:
    | layer_sp_influence_widths layer_sp_influence_width
    ;

layer_sp_influence_width:
    K_WIDTH int_number K_WITHIN int_number K_SPACING int_number
    ;

maxstack_via:
    K_MAXVIASTACK int_number ';'
    | K_MAXVIASTACK int_number K_RANGE T_STRING T_STRING ';'
    ;

via:
    start_via via_option end_via
    ;

via_keyword:
    K_VIA
    ;

start_via:
    via_keyword T_STRING
    | via_keyword T_STRING K_DEFAULT
    | via_keyword T_STRING K_GENERATED
    ;

via_viarule:
    K_VIARULE T_STRING ';' K_CUTSIZE int_number int_number ';' K_LAYERS T_STRING T_STRING T_STRING ';' K_CUTSPACING int_number int_number ';' K_ENCLOSURE int_number int_number int_number int_number ';' via_viarule_options
    ;

via_viarule_options:
    | via_viarule_options via_viarule_option
    ;

via_viarule_option:
    K_ROWCOL int_number int_number ';'
    | K_ORIGIN int_number int_number ';'
    | K_OFFSET int_number int_number int_number int_number ';'
    | K_PATTERN T_STRING ';'
    ;

via_option:
    via_viarule
    | via_other_options
    ;

via_other_options:
    via_other_option via_more_options
    ;

via_more_options:
    | via_more_options via_other_option
    ;

via_other_option:
    via_foreign
    | via_layer_rule
    | K_RESISTANCE int_number ';'
    | K_PROPERTY via_prop_list ';'
    | K_TOPOFSTACKONLY
    ;

via_prop_list:
    via_name_value_pair
    | via_prop_list via_name_value_pair
    ;

via_name_value_pair:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

via_foreign:
    start_foreign ';'
    | start_foreign pt ';'
    | start_foreign pt orientation ';'
    | start_foreign orientation ';'
    ;

start_foreign:
    K_FOREIGN T_STRING
    ;

orientation:
    K_N
    | K_W
    | K_S
    | K_E
    | K_FN
    | K_FW
    | K_FS
    | K_FE
    | K_R0
    | K_R90
    | K_R180
    | K_R270
    | K_MY
    | K_MYR90
    | K_MX
    | K_MXR90
    ;

via_layer_rule:
    via_layer via_geometries
    ;

via_layer:
    K_LAYER T_STRING ';'
    ;

via_geometries:
    | via_geometries via_geometry
    ;

via_geometry:
    K_RECT maskColor pt pt ';'
    | K_POLYGON maskColor firstPt nextPt nextPt otherPts ';'
    ;

end_via:
    K_END T_STRING
    ;

viarule_keyword:
    K_VIARULE T_STRING
    ;

viarule:
    viarule_keyword viarule_layer_list via_names opt_viarule_props end_viarule
    ;

viarule_generate:
    viarule_keyword K_GENERATE viarule_generate_default viarule_layer_list opt_viarule_props end_viarule
    ;

viarule_generate_default:
    | K_DEFAULT
    ;

viarule_layer_list:
    viarule_layer
    | viarule_layer_list viarule_layer
    ;

opt_viarule_props:
    | viarule_props
    ;

viarule_props:
    viarule_prop
    | viarule_props viarule_prop
    ;

viarule_prop:
    K_PROPERTY viarule_prop_list ';'
    ;

viarule_prop_list:
    viarule_prop
    | viarule_prop_list viarule_prop
    | T_STRING T_STRING
    | T_STRING QSTRING
    | T_STRING NUMBER
    ;

viarule_layer:
    viarule_layer_name viarule_layer_options
    ;

via_names:
    | via_names via_name
    ;

via_name:
    via_keyword T_STRING ';'
    ;

viarule_layer_name:
    K_LAYER T_STRING ';'
    ;

viarule_layer_options:
    | viarule_layer_options viarule_layer_option
    ;

viarule_layer_option:
    K_DIRECTION K_HORIZONTAL ';'
    | K_DIRECTION K_VERTICAL ';'
    | K_ENCLOSURE int_number int_number ';'
    | K_WIDTH int_number K_TO int_number ';'
    | K_RECT pt pt ';'
    | K_SPACING int_number K_BY int_number ';'
    | K_RESISTANCE int_number ';'
    | K_OVERHANG int_number ';'
    | K_METALOVERHANG int_number ';'
    ;

end_viarule:
    K_END T_STRING
    ;

spacing_rule:
    start_spacing spacings end_spacing
    ;

start_spacing:
    K_SPACING
    ;

end_spacing:
    K_END K_SPACING
    ;

spacings:
    | spacings spacing
    ;

spacing:
    samenet_keyword T_STRING T_STRING int_number ';'
    | samenet_keyword T_STRING T_STRING int_number K_STACK ';'
    ;

samenet_keyword:
    K_SAMENET
    ;

maskColor:
    | K_MASK int_number
    ;

irdrop:
    start_irdrop ir_tables end_irdrop
    ;

start_irdrop:
    K_IRDROP
    ;

end_irdrop:
    K_END K_IRDROP
    ;

ir_tables:
    | ir_tables ir_table
    ;

ir_table:
    ir_tablename ir_table_values ';'
    ;

ir_table_values:
    | ir_table_values ir_table_value
    ;

ir_table_value:
    int_number int_number
    ;

ir_tablename:
    K_TABLE T_STRING
    ;

minfeature:
    K_MINFEATURE int_number int_number ';'
    ;

dielectric:
    K_DIELECTRIC int_number ';'
    ;

nondefault_rule:
    K_NONDEFAULTRULE T_STRING nd_hardspacing nd_rules end_nd_rule
    ;

end_nd_rule:
    K_END
    | K_END T_STRING
    ;

nd_hardspacing:
    | K_HARDSPACING ';'
    ;

nd_rules:
    | nd_rules nd_rule
    ;

nd_rule:
    nd_layer
    | via
    | spacing_rule
    | nd_prop
    | usevia
    | useviarule
    | mincuts
    ;

usevia:
    K_USEVIA T_STRING ';'
    ;

useviarule:
    K_USEVIARULE T_STRING ';'
    ;

mincuts:
    K_MINCUTS T_STRING int_number ';'
    ;

nd_prop:
    K_PROPERTY nd_prop_list ';'
    ;

nd_prop_list:
    nd_prop
    | nd_prop_list nd_prop
    | T_STRING T_STRING
    | T_STRING QSTRING
    | T_STRING NUMBER
    ;

nd_layer:
    K_LAYER T_STRING K_WIDTH int_number ';' nd_layer_stmts K_END T_STRING
    ;

nd_layer_stmts:
    | nd_layer_stmts nd_layer_stmt
    ;

nd_layer_stmt:
    K_SPACING int_number ';'
    | K_WIREEXTENSION int_number ';'
    | K_RESISTANCE K_RPERSQ int_number ';'
    | K_CAPACITANCE K_CPERSQDIST int_number ';'
    | K_EDGECAPACITANCE int_number ';'
    | K_DIAGWIDTH int_number ';'
    ;

site:
    start_site site_options end_site
    ;

start_site:
    K_SITE T_STRING
    ;

end_site:
    K_END T_STRING
    ;

site_options:
    | site_options site_option
    ;

site_option:
    site_size
    | site_symmetry_statement
    | site_class
    | site_rowpattern_statement
    ;

site_size:
    K_SIZE int_number K_BY int_number ';'
    ;

site_class:
    K_CLASS K_PAD ';'
    | K_CLASS K_CORE ';'
    | K_CLASS K_VIRTUAL ';'
    ;

site_symmetry_statement:
    K_SYMMETRY site_symmetries ';'
    ;

site_symmetries:
    | site_symmetries site_symmetry
    ;

site_symmetry:
    K_X
    | K_Y
    | K_R90
    ;

site_rowpattern_statement:
    K_ROWPATTERN site_rowpatterns ';'
    ;

site_rowpatterns:
    | site_rowpatterns site_rowpattern
    ;

site_rowpattern:
    T_STRING orientation 
    ;

pt:
    int_number int_number
    | '(' int_number int_number ')'
    ;

macro:
    start_macro macro_options end_macro
    ;

start_macro:
    K_MACRO T_STRING
    ;

end_macro:
    K_END T_STRING
    ;

macro_options:
    | macro_options macro_option
    ;

macro_option:
    macro_class
    | macro_generator
    | macro_generate
    | macro_source
    | macro_symmetry_statement
    | macro_fixedMask
    | macro_origin
    | macro_power
    | macro_foreign
    | macro_eeq
    | macro_leq
    | macro_size
    | macro_site
    | macro_pin
    | K_FUNCTION K_BUFFER ';'
    | K_FUNCTION K_INVERTER ';'
    | macro_obs
    | macro_density
    | macro_clocktype
    | timing
    | K_PROPERTY macro_prop_list ';'
    ;

macro_prop_list:
    macro_name_value_pair
    | macro_prop_list macro_name_value_pair
    ;

macro_symmetry_statement:
    K_SYMMETRY macro_symmetries ';'
    ;

macro_symmetries:
    | macro_symmetries macro_symmetry
    ;

macro_symmetry:
    K_X
    | K_Y
    | K_R90
    ;

macro_name_value_pair:
    T_STRING NUMBER 
    | T_STRING QSTRING 
    | T_STRING T_STRING 
    ;

macro_class:
    K_CLASS class_type ';'
    ;

class_type:
    K_COVER
    | K_COVER K_BUMP
    | K_RING
    | K_BLOCK
    | K_BLOCK K_BLACKBOX
    | K_BLOCK K_SOFT
    | K_NONE
    | K_BUMP
    | K_PAD
    | K_VIRTUAL
    | K_PAD pad_type
    | K_CORE
    | K_CORNER
    | K_CORE core_type
    | K_ENDCAP endcap_type
    ;

pad_type:
    K_INPUT
    | K_OUTPUT
    | K_INOUT
    | K_POWER
    | K_SPACER
    | K_AREAIO
    ;

core_type:
    K_FEEDTHRU
    | K_TIEHIGH
    | K_TIELOW
    | K_SPACER
    | K_ANTENNACELL
    | K_WELLTAP
    ;

endcap_type:
    K_PRE
    | K_POST
    | K_TOPLEFT
    | K_TOPRIGHT
    | K_BOTTOMLEFT
    | K_BOTTOMRIGHT
    ;

macro_generator:
    K_GENERATOR T_STRING ';'
    ;

macro_generate:
    K_GENERATE T_STRING T_STRING ';'
    ;

macro_source:
    K_SOURCE K_USER ';'
    | K_SOURCE K_GENERATE ';'
    | K_SOURCE K_BLOCK ';'
    ;

macro_power:
    K_POWER int_number ';'
    ;

macro_origin:
    K_ORIGIN pt ';'
    ;

macro_foreign:
    start_foreign ';'
    | start_foreign pt ';'
    | start_foreign pt orientation ';'
    | start_foreign orientation ';'
    ;

macro_fixedMask:
    K_FIXEDMASK ';'
    ;

macro_eeq:
    K_EEQ T_STRING ';'
    ;

macro_leq:
    K_LEQ T_STRING ';'
    ;

macro_site:
    macro_site_word T_STRING ';'
    | macro_site_word sitePattern ';'
    ;

macro_site_word:
    K_SITE
    ;

site_word:
    K_SITE
    ;

macro_size:
    K_SIZE int_number K_BY int_number ';'
    ;

macro_pin:
    start_macro_pin macro_pin_options end_macro_pin
    ;

start_macro_pin:
    K_PIN T_STRING
    | K_PIN K_X
    | K_PIN K_Y
    | K_PIN K_S
    ;

end_macro_pin:
    K_END T_STRING
    | K_END K_X
    | K_END K_Y
    | K_END K_S
    ;

macro_pin_options:
    | macro_pin_options macro_pin_option
    ;

macro_pin_option:
    start_foreign ';'
    | start_foreign pt ';'
    | start_foreign pt orientation ';'
    | start_foreign K_STRUCTURE ';'
    | start_foreign K_STRUCTURE pt ';'
    | start_foreign K_STRUCTURE pt orientation ';'
    | K_LEQ T_STRING ';'
    | K_POWER int_number ';'
    | electrical_direction
    | K_USE macro_pin_use ';'
    | K_SCANUSE macro_scan_use ';'
    | K_LEAKAGE int_number ';'
    | K_RISETHRESH int_number ';'
    | K_FALLTHRESH int_number ';'
    | K_RISESATCUR int_number ';'
    | K_FALLSATCUR int_number ';'
    | K_VLO int_number ';'
    | K_VHI int_number ';'
    | K_TIEOFFR int_number ';'
    | K_SHAPE pin_shape ';'
    | K_MUSTJOIN T_STRING ';'
    | K_OUTPUTNOISEMARGIN int_number int_number ';'
    | K_OUTPUTRESISTANCE int_number int_number ';'
    | K_INPUTNOISEMARGIN int_number int_number ';'
    | K_CAPACITANCE int_number ';'
    | K_MAXDELAY int_number ';'
    | K_MAXLOAD int_number ';'
    | K_RESISTANCE int_number ';'
    | K_PULLDOWNRES int_number ';'
    | K_CURRENTSOURCE K_ACTIVE ';'
    | K_CURRENTSOURCE K_RESISTIVE ';'
    | K_RISEVOLTAGETHRESHOLD int_number ';'
    | K_FALLVOLTAGETHRESHOLD int_number ';'
    | K_IV_TABLES T_STRING T_STRING ';'
    | K_TAPERRULE T_STRING ';'
    | K_PROPERTY pin_prop_list ';'
    | start_macro_port macro_port_class_option geometries K_END
    | start_macro_port K_END
    | K_ANTENNASIZE int_number opt_layer_name ';'
    | K_ANTENNAMETALAREA NUMBER opt_layer_name ';'
    | K_ANTENNAMETALLENGTH int_number opt_layer_name ';'
    | K_RISESLEWLIMIT int_number ';'
    | K_FALLSLEWLIMIT int_number ';'
    | K_ANTENNAPARTIALMETALAREA NUMBER opt_layer_name ';'
    | K_ANTENNAPARTIALMETALSIDEAREA NUMBER opt_layer_name ';'
    | K_ANTENNAPARTIALCUTAREA NUMBER opt_layer_name ';'
    | K_ANTENNADIFFAREA NUMBER opt_layer_name ';'
    | K_ANTENNAGATEAREA NUMBER opt_layer_name ';'
    | K_ANTENNAMAXAREACAR NUMBER req_layer_name ';'
    | K_ANTENNAMAXSIDEAREACAR NUMBER req_layer_name ';'
    | K_ANTENNAMAXCUTCAR NUMBER req_layer_name ';'
    | K_ANTENNAMODEL pin_layer_oxide ';'
    | K_NETEXPR QSTRING ';'
    | K_SUPPLYSENSITIVITY T_STRING ';'
    | K_GROUNDSENSITIVITY T_STRING ';'
    ;

pin_layer_oxide:
    K_OXIDE1
    | K_OXIDE2
    | K_OXIDE3
    | K_OXIDE4
    ;

pin_prop_list:
    pin_name_value_pair
    | pin_prop_list pin_name_value_pair
    ;

pin_name_value_pair:
    T_STRING NUMBER
    | T_STRING QSTRING
    | T_STRING T_STRING
    ;

electrical_direction:
    K_DIRECTION K_INPUT ';'
    | K_DIRECTION K_OUTPUT ';'
    | K_DIRECTION K_OUTPUT K_TRISTATE ';'
    | K_DIRECTION K_INOUT ';'
    | K_DIRECTION K_FEEDTHRU ';'
    ;

start_macro_port:
    K_PORT
    ;

macro_port_class_option:
    | K_CLASS class_type ';'
    ;

macro_pin_use:
    K_SIGNAL
    | K_ANALOG
    | K_POWER
    | K_GROUND
    | K_CLOCK
    | K_DATA
    ;

macro_scan_use:
    K_INPUT
    | K_OUTPUT
    | K_START
    | K_STOP
    ;

pin_shape:
    | K_ABUTMENT
    | K_RING
    | K_FEEDTHRU
    ;

geometries:
    geometry geometry_options
    ;

geometry:
    K_LAYER T_STRING layer_exceptpgnet layer_spacing ';'
    | K_WIDTH int_number ';'
    | K_PATH maskColor firstPt otherPts ';'
    | K_PATH maskColor K_ITERATE firstPt otherPts stepPattern ';'
    | K_RECT maskColor pt pt ';'
    | K_RECT maskColor K_ITERATE pt pt stepPattern ';'
    | K_POLYGON maskColor firstPt nextPt nextPt otherPts ';'
    | K_POLYGON maskColor K_ITERATE firstPt nextPt nextPt otherPts stepPattern ';'
    | via_placement
    ;

geometry_options:
    | geometry_options geometry
    ;

layer_exceptpgnet:
    | K_EXCEPTPGNET
    ;

layer_spacing:
    | K_SPACING int_number
    | K_DESIGNRULEWIDTH int_number
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

via_placement:
    K_VIA maskColor pt T_STRING ';'
    | K_VIA K_ITERATE maskColor pt T_STRING stepPattern ';'
    ;

stepPattern:
    K_DO int_number K_BY int_number K_STEP int_number int_number
    ;

sitePattern:
    T_STRING int_number int_number orientation K_DO int_number K_BY int_number K_STEP int_number int_number
    | T_STRING int_number int_number orientation
    ;

trackPattern:
    K_X int_number K_DO int_number K_STEP int_number K_LAYER trackLayers
    | K_Y int_number K_DO int_number K_STEP int_number K_LAYER trackLayers
    | K_X int_number K_DO int_number K_STEP int_number
    | K_Y int_number K_DO int_number K_STEP int_number
    ;

trackLayers:
    | trackLayers layer_name
    ;

layer_name:
    T_STRING
    ;

gcellPattern:
    K_X int_number K_DO int_number K_STEP int_number
    | K_Y int_number K_DO int_number K_STEP int_number
    ;

macro_obs:
    start_macro_obs geometries K_END
    | start_macro_obs K_END
    ;

start_macro_obs:
    K_OBS
    ;

macro_density:
    K_DENSITY density_layer density_layers K_END
    ;

density_layers:
    | density_layers density_layer
    ;

density_layer:
    K_LAYER T_STRING ';' density_layer_rect density_layer_rects
    ;

density_layer_rects:
    | density_layer_rects density_layer_rect
    ;

density_layer_rect:
    K_RECT pt pt int_number ';'
    ;

macro_clocktype:
    K_CLOCKTYPE T_STRING ';'
    ;

timing:
    start_timing timing_options end_timing
    ;

start_timing:
    K_TIMING
    ;

end_timing:
    K_END K_TIMING
    ;

timing_options:
    | timing_options timing_option
    ;

timing_option:
    K_FROMPIN list_of_from_strings ';'
    | K_TOPIN list_of_to_strings ';'
    | risefall K_INTRINSIC int_number int_number slew_spec K_VARIABLE int_number int_number ';'
    | risefall delay_or_transition K_UNATENESS unateness K_TABLEDIMENSION int_number int_number int_number ';'
    | K_TABLEAXIS list_of_table_axis_dnumbers ';'
    | K_TABLEENTRIES list_of_table_entries ';'
    | K_RISERS int_number int_number ';'
    | K_FALLRS int_number int_number ';'
    | K_RISECS int_number int_number ';'
    | K_FALLCS int_number int_number ';'
    | K_RISESATT1 int_number int_number ';'
    | K_FALLSATT1 int_number int_number ';'
    | K_RISET0 int_number int_number ';'
    | K_FALLT0 int_number int_number ';'
    | K_UNATENESS unateness ';'
    | K_STABLE K_SETUP int_number K_HOLD int_number risefall ';'
    | two_pin_trigger from_pin_trigger to_pin_trigger K_TABLEDIMENSION int_number int_number int_number ';'
    | one_pin_trigger K_TABLEDIMENSION int_number int_number int_number ';'
    | K_SDFCONDSTART QSTRING ';'
    | K_SDFCONDEND QSTRING ';'
    | K_SDFCOND QSTRING ';'
    | K_EXTENSION ';'
    ;

one_pin_trigger:
    K_MPWH
    | K_MPWL
    | K_PERIOD
    ;

two_pin_trigger:
    K_SETUP
    | K_HOLD
    | K_RECOVERY
    | K_SKEW
    ;

from_pin_trigger:
    K_ANYEDGE
    | K_POSEDGE
    | K_NEGEDGE
    ;

to_pin_trigger:
    K_ANYEDGE
    | K_POSEDGE
    | K_NEGEDGE
    ;

delay_or_transition:
    K_DELAY
    | K_TRANSITIONTIME
    ;

list_of_table_entries:
    table_entry
    | list_of_table_entries table_entry
    ;

table_entry:
    '(' int_number int_number int_number ')'
    ;

list_of_table_axis_dnumbers:
    int_number
    | list_of_table_axis_dnumbers int_number
    ;

slew_spec:
    | int_number int_number int_number int_number
    | int_number int_number int_number int_number int_number int_number int_number
    ;

risefall:
    K_RISE
    | K_FALL
    ;

unateness:
    K_INVERT
    | K_NONINVERT
    | K_NONUNATE
    ;

list_of_from_strings:
    T_STRING
    | list_of_from_strings T_STRING
    ;

list_of_to_strings:
    T_STRING
    | list_of_to_strings T_STRING
    ;

array:
    start_array array_rules end_array
    ;

start_array:
    K_ARRAY T_STRING
    ;

end_array:
    K_END T_STRING
    ;

array_rules:
    | array_rules array_rule
    ;

array_rule:
    site_word sitePattern ';'
    | K_CANPLACE sitePattern ';'
    | K_CANNOTOCCUPY sitePattern ';'
    | K_TRACKS trackPattern ';'
    | floorplan_start floorplan_list K_END T_STRING
    | K_GCELLGRID gcellPattern ';'
    | K_DEFAULTCAP int_number cap_list K_END K_DEFAULTCAP
    | def_statement
    ;

floorplan_start:
    K_FLOORPLAN T_STRING
    ;

floorplan_list:
    | floorplan_list floorplan_element
    ;

floorplan_element:
    K_CANPLACE sitePattern ';'
    | K_CANNOTOCCUPY sitePattern ';'
    ;

cap_list:
    | cap_list one_cap
    ;

one_cap:
    K_MINPINS int_number K_WIRECAP int_number ';'
    ;

msg_statement:
    K_MESSAGE T_STRING '=' s_expr ';'
    ;

create_file_statement:
    K_CREATEFILE T_STRING '=' s_expr ';'
    ;

def_statement:
    K_DEFINE T_STRING '=' expression ';'
    | K_DEFINES T_STRING '=' s_expr ';'
    | K_DEFINEB T_STRING '=' b_expr ';'
    ;

expression:
    expression '+' expression
    | expression '-' expression
    | expression '*' expression
    | expression '/' expression
    | '-' expression
    | '(' expression ')'
    | K_IF b_expr K_THEN expression K_ELSE expression
    | int_number
    ;

b_expr:
    expression relop expression
    | expression K_AND expression
    | expression K_OR expression
    | s_expr relop s_expr
    | s_expr K_AND s_expr
    | s_expr K_OR s_expr
    | b_expr K_EQ b_expr
    | b_expr K_NE b_expr
    | b_expr K_AND b_expr
    | b_expr K_OR b_expr
    | K_NOT b_expr
    | '(' b_expr ')'
    | K_IF b_expr K_THEN b_expr K_ELSE b_expr
    | K_TRUE
    | K_FALSE
    ;

s_expr:
    s_expr '+' s_expr
    | '(' s_expr ')'
    | K_IF b_expr K_THEN s_expr K_ELSE s_expr
    | QSTRING
    ;

relop:
    K_LE
    | K_LT
    | K_GE
    | K_GT
    | K_EQ
    | K_NE
    | '='
    | '<'
    | '>'
    ;

prop_def_section:
    K_PROPDEF prop_stmts K_END K_PROPDEF
    ;

prop_stmts:
    | prop_stmts prop_stmt
    ;

prop_stmt:
    K_LIBRARY T_STRING prop_define ';'
    | K_COMPONENTPIN T_STRING prop_define ';'
    | K_PIN T_STRING prop_define ';'
    | K_MACRO T_STRING prop_define ';'
    | K_VIA T_STRING prop_define ';'
    | K_VIARULE T_STRING prop_define ';'
    | K_LAYER T_STRING prop_define ';'
    | K_NONDEFAULTRULE T_STRING prop_define ';'
    ;

prop_define:
    K_INTEGER opt_def_range opt_def_dvalue
    | K_REAL opt_def_range opt_def_value
    | K_STRING
    | K_STRING QSTRING
    | K_NAMEMAPSTRING T_STRING
    ;

opt_range_second:
    | K_USELENGTHTHRESHOLD
    | K_INFLUENCE int_number
    | K_INFLUENCE int_number K_RANGE int_number int_number
    | K_RANGE int_number int_number
    ;

opt_endofline:
    | K_PARALLELEDGE int_number K_WITHIN int_number opt_endofline_twoedges
    ;

opt_endofline_twoedges:
    | K_TWOEDGES
    ;

opt_samenetPGonly:
    | K_PGONLY
    ;

opt_def_range:
    | K_RANGE int_number int_number
    ;

opt_def_value:
    | NUMBER
    ;

opt_def_dvalue:
    | int_number
    ;

layer_spacing_opts:
    | layer_spacing_opt layer_spacing_opts
    ;

layer_spacing_opt:
    K_CENTERTOCENTER
    | K_SAMENET opt_samenetPGonly
    | K_PARALLELOVERLAP
    ;

layer_spacing_cut_routing:
    | K_LAYER T_STRING spacing_cut_layer_opt
    | K_ADJACENTCUTS int_number K_WITHIN int_number opt_adjacentcuts_exceptsame
    | K_AREA NUMBER
    | K_RANGE int_number int_number opt_range_second
    | K_LENGTHTHRESHOLD int_number
    | K_LENGTHTHRESHOLD int_number K_RANGE int_number int_number
    | K_ENDOFLINE int_number K_WITHIN int_number opt_endofline
    | K_NOTCHLENGTH int_number
    | K_ENDOFNOTCHWIDTH int_number K_NOTCHSPACING int_number K_NOTCHLENGTH int_number
    ;

spacing_cut_layer_opt:
    | K_STACK
    ;

opt_adjacentcuts_exceptsame:
    | K_EXCEPTSAMEPGNET
    ;

opt_layer_name:
    | K_LAYER T_STRING
    ;

req_layer_name:
    K_LAYER T_STRING
    ;

universalnoisemargin:
    K_UNIVERSALNOISEMARGIN int_number int_number ';'
    ;

edgeratethreshold1:
    K_EDGERATETHRESHOLD1 int_number ';'
    ;

edgeratethreshold2:
    K_EDGERATETHRESHOLD2 int_number ';'
    ;

edgeratescalefactor:
    K_EDGERATESCALEFACTOR int_number ';'
    ;

noisetable:
    K_NOISETABLE int_number ';' noise_table_list end_noisetable ';'
    ;

end_noisetable:
    K_END K_NOISETABLE
    ;

noise_table_list:
    noise_table_entry
    | noise_table_list noise_table_entry
    ;

noise_table_entry:
    K_EDGERATE int_number ';'
    | output_resistance_entry
    ;

output_resistance_entry:
    K_OUTPUTRESISTANCE num_list ';' victim_list
    ;

num_list:
    int_number
    | num_list int_number
    ;

victim_list:
    victim
    | victim_list victim
    ;

victim:
    K_VICTIMLENGTH int_number ';' K_VICTIMNOISE vnoiselist ';'
    ;

vnoiselist:
    int_number
    | vnoiselist int_number
    ;

correctiontable:
    K_CORRECTIONTABLE int_number ';' correction_table_list end_correctiontable ';'
    ;

end_correctiontable:
    K_END K_CORRECTIONTABLE
    ;

correction_table_list:
    correction_table_item
    | correction_table_list correction_table_item
    ;

correction_table_item:
    K_EDGERATE int_number ';'
    | output_list
    ;

output_list:
    K_OUTPUTRESISTANCE numo_list ';' corr_victim_list
    ;

numo_list:
    int_number
    | numo_list int_number
    ;

corr_victim_list:
    corr_victim
    | corr_victim_list corr_victim
    ;

corr_victim:
    K_VICTIMLENGTH int_number ';' K_CORRECTIONFACTOR corr_list ';'
    ;

corr_list:
    int_number
    | corr_list int_number
    ;

input_antenna:
    K_INPUTPINANTENNASIZE int_number ';'
    ;

output_antenna:
    K_OUTPUTPINANTENNASIZE int_number ';'
    ;

inout_antenna:
    K_INOUTPINANTENNASIZE int_number ';'
    ;

antenna_input:
    K_ANTENNAINPUTGATEAREA NUMBER ';'
    ;

antenna_inout:
    K_ANTENNAINOUTDIFFAREA NUMBER ';'
    ;

antenna_output:
    K_ANTENNAOUTPUTDIFFAREA NUMBER ';'
    ;

K_HISTORY                      : 'HISTORY' ;
K_ABUT                         : 'ABUT' ;
K_ABUTMENT                     : 'ABUTMENT' ;
K_ACTIVE                       : 'ACTIVE' ;
K_ANALOG                       : 'ANALOG' ;
K_ARRAY                        : 'ARRAY' ;
K_AREA                         : 'AREA' ;
K_BLOCK                        : 'BLOCK' ;
K_BOTTOMLEFT                   : 'BOTTOMLEFT' ;
K_BOTTOMRIGHT                  : 'BOTTOMRIGHT' ;
K_BY                           : 'BY' ;
K_CAPACITANCE                  : 'CAPACITANCE' ;
K_CAPMULTIPLIER                : 'CAPMULTIPLIER' ;
K_CLASS                        : 'CLASS' ;
K_CLOCK                        : 'CLOCK' ;
K_CLOCKTYPE                    : 'CLOCKTYPE' ;
K_COLUMNMAJOR                  : 'COLUMNMAJOR' ;
K_DESIGNRULEWIDTH              : 'DESIGNRULEWIDTH' ;
K_INFLUENCE                    : 'INFLUENCE' ;
K_CORE                         : 'CORE' ;
K_CORNER                       : 'CORNER' ;
K_COVER                        : 'COVER' ;
K_CPERSQDIST                   : 'CPERSQDIST' ;
K_CURRENT                      : 'CURRENT' ;
K_CURRENTSOURCE                : 'CURRENTSOURCE' ;
K_CUT                          : 'CUT' ;
K_DEFAULT                      : 'DEFAULT' ;
K_DATABASE                     : 'DATABASE' ;
K_DATA                         : 'DATA' ;
K_DIELECTRIC                   : 'DIELECTRIC' ;
K_DIRECTION                    : 'DIRECTION' ;
K_DO                           : 'DO' ;
K_EDGECAPACITANCE              : 'EDGECAPACITANCE' ;
K_EEQ                          : 'EEQ' ;
K_END                          : 'END' ;
K_ENDCAP                       : 'ENDCAP' ;
K_FALL                         : 'FALL' ;
K_FALLCS                       : 'FALLCS' ;
K_FALLT0                       : 'FALLT0' ;
K_FALLSATT1                    : 'FALLSATT1' ;
K_FALLRS                       : 'FALLRS' ;
K_FALLSATCUR                   : 'FALLSATCUR' ;
K_FALLTHRESH                   : 'FALLTHRESH' ;
K_FEEDTHRU                     : 'FEEDTHRU' ;
K_FIXED                        : 'FIXED' ;
K_FOREIGN                      : 'FOREIGN' ;
K_FROMPIN                      : 'FROMPIN' ;
K_GENERATE                     : 'GENERATE' ;
K_GENERATOR                    : 'GENERATOR' ;
K_GROUND                       : 'GROUND' ;
K_HEIGHT                       : 'HEIGHT' ;
K_HORIZONTAL                   : 'HORIZONTAL' ;
K_INOUT                        : 'INOUT' ;
K_INPUT                        : 'INPUT' ;
K_INPUTNOISEMARGIN             : 'INPUTNOISEMARGIN' ;
K_COMPONENTPIN                 : 'COMPONENTPIN' ;
K_INTRINSIC                    : 'INTRINSIC' ;
K_INVERT                       : 'INVERT' ;
K_IRDROP                       : 'IRDROP' ;
K_ITERATE                      : 'ITERATE' ;
K_IV_TABLES                    : 'IV_TABLES' ;
K_LAYER                        : 'LAYER' ;
K_LEAKAGE                      : 'LEAKAGE' ;
K_LEQ                          : 'LEQ' ;
K_LIBRARY                      : 'LIBRARY' ;
K_MACRO                        : 'MACRO' ;
K_MATCH                        : 'MATCH' ;
K_MAXDELAY                     : 'MAXDELAY' ;
K_MAXLOAD                      : 'MAXLOAD' ;
K_METALOVERHANG                : 'METALOVERHANG' ;
K_MILLIAMPS                    : 'MILLIAMPS' ;
K_MILLIWATTS                   : 'MILLIWATTS' ;
K_MINFEATURE                   : 'MINFEATURE' ;
K_MUSTJOIN                     : 'MUSTJOIN' ;
K_NAMESCASESENSITIVE           : 'NAMESCASESENSITIVE' ;
K_NANOSECONDS                  : 'NANOSECONDS' ;
K_NETS                         : 'NETS' ;
K_NEW                          : 'NEW' ;
K_NONDEFAULTRULE               : 'NONDEFAULTRULE' ;
K_NONINVERT                    : 'NONINVERT' ;
K_NONUNATE                     : 'NONUNATE' ;
K_OBS                          : 'OBS' ;
K_OHMS                         : 'OHMS' ;
K_OFFSET                       : 'OFFSET' ;
K_ORIENTATION                  : 'ORIENTATION' ;
K_ORIGIN                       : 'ORIGIN' ;
K_OUTPUT                       : 'OUTPUT' ;
K_OUTPUTNOISEMARGIN            : 'OUTPUTNOISEMARGIN' ;
K_OVERHANG                     : 'OVERHANG' ;
K_OVERLAP                      : 'OVERLAP' ;
K_OFF                          : 'OFF' ;
K_ON                           : 'ON' ;
K_OVERLAPS                     : 'OVERLAPS' ;
K_PAD                          : 'PAD' ;
K_PATH                         : 'PATH' ;
K_PATTERN                      : 'PATTERN' ;
K_PICOFARADS                   : 'PICOFARADS' ;
K_PIN                          : 'PIN' ;
K_PITCH                        : 'PITCH' ;
K_PLACED                       : 'PLACED' ;
K_POLYGON                      : 'POLYGON' ;
K_PORT                         : 'PORT' ;
K_POST                         : 'POST' ;
K_POWER                        : 'POWER' ;
K_PRE                          : 'PRE' ;
K_PULLDOWNRES                  : 'PULLDOWNRES' ;
K_RECT                         : 'RECT' ;
K_RESISTANCE                   : 'RESISTANCE' ;
K_RESISTIVE                    : 'RESISTIVE' ;
K_RING                         : 'RING' ;
K_RISE                         : 'RISE' ;
K_RISECS                       : 'RISECS' ;
K_RISERS                       : 'RISERS' ;
K_RISESATCUR                   : 'RISESATCUR' ;
K_RISETHRESH                   : 'RISETHRESH' ;
K_RISESATT1                    : 'RISESATT1' ;
K_RISET0                       : 'RISET0' ;
K_RISEVOLTAGETHRESHOLD         : 'RISEVOLTAGETHRESHOLD' ;
K_FALLVOLTAGETHRESHOLD         : 'FALLVOLTAGETHRESHOLD' ;
K_ROUTING                      : 'ROUTING' ;
K_ROWMAJOR                     : 'ROWMAJOR' ;
K_RPERSQ                       : 'RPERSQ' ;
K_SAMENET                      : 'SAMENET' ;
K_SCANUSE                      : 'SCANUSE' ;
K_SHAPE                        : 'SHAPE' ;
K_SHRINKAGE                    : 'SHRINKAGE' ;
K_SIGNAL                       : 'SIGNAL' ;
K_SITE                         : 'SITE' ;
K_SIZE                         : 'SIZE' ;
K_SOURCE                       : 'SOURCE' ;
K_SPACER                       : 'SPACER' ;
K_SPACING                      : 'SPACING' ;
K_SPECIALNETS                  : 'SPECIALNETS' ;
K_STACK                        : 'STACK' ;
K_START                        : 'START' ;
K_STEP                         : 'STEP' ;
K_STOP                         : 'STOP' ;
K_STRUCTURE                    : 'STRUCTURE' ;
K_SYMMETRY                     : 'SYMMETRY' ;
K_TABLE                        : 'TABLE' ;
K_THICKNESS                    : 'THICKNESS' ;
K_TIEHIGH                      : 'TIEHIGH' ;
K_TIELOW                       : 'TIELOW' ;
K_TIEOFFR                      : 'TIEOFFR' ;
K_TIME                         : 'TIME' ;
K_TIMING                       : 'TIMING' ;
K_TO                           : 'TO' ;
K_TOPIN                        : 'TOPIN' ;
K_TOPLEFT                      : 'TOPLEFT' ;
K_TOPRIGHT                     : 'TOPRIGHT' ;
K_TOPOFSTACKONLY               : 'TOPOFSTACKONLY' ;
K_TRISTATE                     : 'TRISTATE' ;
K_TYPE                         : 'TYPE' ;
K_UNATENESS                    : 'UNATENESS' ;
K_UNITS                        : 'UNITS' ;
K_USE                          : 'USE' ;
K_VARIABLE                     : 'VARIABLE' ;
K_VERTICAL                     : 'VERTICAL' ;
K_VHI                          : 'VHI' ;
K_VIA                          : 'VIA' ;
K_VIARULE                      : 'VIARULE' ;
K_VLO                          : 'VLO' ;
K_VOLTAGE                      : 'VOLTAGE' ;
K_VOLTS                        : 'VOLTS' ;
K_WIDTH                        : 'WIDTH' ;
K_X                            : 'X' ;
K_Y                            : 'Y' ;
K_N                            : 'N' ;
K_S                            : 'S' ;
K_E                            : 'E' ;
K_W                            : 'W' ;
K_FN                           : 'FN' ;
K_FS                           : 'FS' ;
K_FE                           : 'FE' ;
K_FW                           : 'FW' ;
K_R0                           : 'R0' ;
K_R90                          : 'R90' ;
K_R180                         : 'R180' ;
K_R270                         : 'R270' ;
K_MX                           : 'MX' ;
K_MY                           : 'MY' ;
K_MXR90                        : 'MXR90' ;
K_MYR90                        : 'MYR90' ;
K_USER                         : 'USER' ;
K_MASTERSLICE                  : 'MASTERSLICE' ;
K_ENDMACRO                     : 'ENDMACRO' ;
K_ENDMACROPIN                  : 'ENDMACROPIN' ;
K_ENDVIARULE                   : 'ENDVIARULE' ;
K_ENDVIA                       : 'ENDVIA' ;
K_ENDLAYER                     : 'ENDLAYER' ;
K_ENDSITE                      : 'ENDSITE' ;
K_CANPLACE                     : 'CANPLACE' ;
K_CANNOTOCCUPY                 : 'CANNOTOCCUPY' ;
K_TRACKS                       : 'TRACKS' ;
K_FLOORPLAN                    : 'FLOORPLAN' ;
K_GCELLGRID                    : 'GCELLGRID' ;
K_DEFAULTCAP                   : 'DEFAULTCAP' ;
K_MINPINS                      : 'MINPINS' ;
K_WIRECAP                      : 'WIRECAP' ;
K_STABLE                       : 'STABLE' ;
K_SETUP                        : 'SETUP' ;
K_HOLD                         : 'HOLD' ;
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
K_DELAY                        : 'DELAY' ;
K_TABLEDIMENSION               : 'TABLEDIMENSION' ;
K_TABLEAXIS                    : 'TABLEAXIS' ;
K_TABLEENTRIES                 : 'TABLEENTRIES' ;
K_TRANSITIONTIME               : 'TRANSITIONTIME' ;
K_EXTENSION                    : 'EXTENSION' ;
K_PROPDEF                      : 'PROPDEF' ;
K_STRING                       : 'STRING' ;
K_INTEGER                      : 'INTEGER' ;
K_REAL                         : 'REAL' ;
K_RANGE                        : 'RANGE' ;
K_PROPERTY                     : 'PROPERTY' ;
K_VIRTUAL                      : 'VIRTUAL' ;
K_BUSBITCHARS                  : 'BUSBITCHARS' ;
K_VERSION                      : 'VERSION' ;
K_BEGINEXT                     : 'BEGINEXT' ;
K_ENDEXT                       : 'ENDEXT' ;
K_UNIVERSALNOISEMARGIN         : 'UNIVERSALNOISEMARGIN' ;
K_EDGERATETHRESHOLD1           : 'EDGERATETHRESHOLD1' ;
K_CORRECTIONTABLE              : 'CORRECTIONTABLE' ;
K_EDGERATESCALEFACTOR          : 'EDGERATESCALEFACTOR' ;
K_EDGERATETHRESHOLD2           : 'EDGERATETHRESHOLD2' ;
K_VICTIMNOISE                  : 'VICTIMNOISE' ;
K_NOISETABLE                   : 'NOISETABLE' ;
K_EDGERATE                     : 'EDGERATE' ;
K_OUTPUTRESISTANCE             : 'OUTPUTRESISTANCE' ;
K_VICTIMLENGTH                 : 'VICTIMLENGTH' ;
K_CORRECTIONFACTOR             : 'CORRECTIONFACTOR' ;
K_OUTPUTPINANTENNASIZE         : 'OUTPUTPINANTENNASIZE' ;
K_INPUTPINANTENNASIZE          : 'INPUTPINANTENNASIZE' ;
K_INOUTPINANTENNASIZE          : 'INOUTPINANTENNASIZE' ;
K_CURRENTDEN                   : 'CURRENTDEN' ;
K_PWL                          : 'PWL' ;
K_ANTENNALENGTHFACTOR          : 'ANTENNALENGTHFACTOR' ;
K_TAPERRULE                    : 'TAPERRULE' ;
K_DIVIDERCHAR                  : 'DIVIDERCHAR' ;
K_ANTENNASIZE                  : 'ANTENNASIZE' ;
K_ANTENNAMETALLENGTH           : 'ANTENNAMETALLENGTH' ;
K_ANTENNAMETALAREA             : 'ANTENNAMETALAREA' ;
K_RISESLEWLIMIT                : 'RISESLEWLIMIT' ;
K_FALLSLEWLIMIT                : 'FALLSLEWLIMIT' ;
K_FUNCTION                     : 'FUNCTION' ;
K_BUFFER                       : 'BUFFER' ;
K_INVERTER                     : 'INVERTER' ;
K_NAMEMAPSTRING                : 'NAMEMAPSTRING' ;
K_NOWIREEXTENSIONATPIN         : 'NOWIREEXTENSIONATPIN' ;
K_WIREEXTENSION                : 'WIREEXTENSION' ;
K_MESSAGE                      : 'MESSAGE' ;
K_CREATEFILE                   : 'CREATEFILE' ;
K_OPENFILE                     : 'OPENFILE' ;
K_CLOSEFILE                    : 'CLOSEFILE' ;
K_WARNING                      : 'WARNING' ;
K_ERROR                        : 'ERROR' ;
K_FATALERROR                   : 'FATALERROR' ;
K_RECOVERY                     : 'RECOVERY' ;
K_SKEW                         : 'SKEW' ;
K_ANYEDGE                      : 'ANYEDGE' ;
K_POSEDGE                      : 'POSEDGE' ;
K_NEGEDGE                      : 'NEGEDGE' ;
K_SDFCONDSTART                 : 'SDFCONDSTART' ;
K_SDFCONDEND                   : 'SDFCONDEND' ;
K_SDFCOND                      : 'SDFCOND' ;
K_MPWH                         : 'MPWH' ;
K_MPWL                         : 'MPWL' ;
K_PERIOD                       : 'PERIOD' ;
K_ACCURRENTDENSITY             : 'ACCURRENTDENSITY' ;
K_DCCURRENTDENSITY             : 'DCCURRENTDENSITY' ;
K_AVERAGE                      : 'AVERAGE' ;
K_PEAK                         : 'PEAK' ;
K_RMS                          : 'RMS' ;
K_FREQUENCY                    : 'FREQUENCY' ;
K_CUTAREA                      : 'CUTAREA' ;
K_MEGAHERTZ                    : 'MEGAHERTZ' ;
K_USELENGTHTHRESHOLD           : 'USELENGTHTHRESHOLD' ;
K_LENGTHTHRESHOLD              : 'LENGTHTHRESHOLD' ;
K_ANTENNAINPUTGATEAREA         : 'ANTENNAINPUTGATEAREA' ;
K_ANTENNAINOUTDIFFAREA         : 'ANTENNAINOUTDIFFAREA' ;
K_ANTENNAOUTPUTDIFFAREA        : 'ANTENNAOUTPUTDIFFAREA' ;
K_ANTENNAAREARATIO             : 'ANTENNAAREARATIO' ;
K_ANTENNADIFFAREARATIO         : 'ANTENNADIFFAREARATIO' ;
K_ANTENNACUMAREARATIO          : 'ANTENNACUMAREARATIO' ;
K_ANTENNACUMDIFFAREARATIO      : 'ANTENNACUMDIFFAREARATIO' ;
K_ANTENNAAREAFACTOR            : 'ANTENNAAREAFACTOR' ;
K_ANTENNASIDEAREARATIO         : 'ANTENNASIDEAREARATIO' ;
K_ANTENNADIFFSIDEAREARATIO     : 'ANTENNADIFFSIDEAREARATIO' ;
K_ANTENNACUMSIDEAREARATIO      : 'ANTENNACUMSIDEAREARATIO' ;
K_ANTENNACUMDIFFSIDEAREARATIO  : 'ANTENNACUMDIFFSIDEAREARATIO' ;
K_ANTENNASIDEAREAFACTOR        : 'ANTENNASIDEAREAFACTOR' ;
K_DIFFUSEONLY                  : 'DIFFUSEONLY' ;
K_MANUFACTURINGGRID            : 'MANUFACTURINGGRID' ;
K_FIXEDMASK                    : 'FIXEDMASK' ;
K_ANTENNACELL                  : 'ANTENNACELL' ;
K_CLEARANCEMEASURE             : 'CLEARANCEMEASURE' ;
K_EUCLIDEAN                    : 'EUCLIDEAN' ;
K_MAXXY                        : 'MAXXY' ;
K_USEMINSPACING                : 'USEMINSPACING' ;
K_ROWMINSPACING                : 'ROWMINSPACING' ;
K_ROWABUTSPACING               : 'ROWABUTSPACING' ;
K_FLIP                         : 'FLIP' ;
K_NONE                         : 'NONE' ;
K_ANTENNAPARTIALMETALAREA      : 'ANTENNAPARTIALMETALAREA' ;
K_ANTENNAPARTIALMETALSIDEAREA  : 'ANTENNAPARTIALMETALSIDEAREA' ;
K_ANTENNAGATEAREA              : 'ANTENNAGATEAREA' ;
K_ANTENNADIFFAREA              : 'ANTENNADIFFAREA' ;
K_ANTENNAMAXAREACAR            : 'ANTENNAMAXAREACAR' ;
K_ANTENNAMAXSIDEAREACAR        : 'ANTENNAMAXSIDEAREACAR' ;
K_ANTENNAPARTIALCUTAREA        : 'ANTENNAPARTIALCUTAREA' ;
K_ANTENNAMAXCUTCAR             : 'ANTENNAMAXCUTCAR' ;
K_SLOTWIREWIDTH                : 'SLOTWIREWIDTH' ;
K_SLOTWIRELENGTH               : 'SLOTWIRELENGTH' ;
K_SLOTWIDTH                    : 'SLOTWIDTH' ;
K_SLOTLENGTH                   : 'SLOTLENGTH' ;
K_MAXADJACENTSLOTSPACING       : 'MAXADJACENTSLOTSPACING' ;
K_MAXCOAXIALSLOTSPACING        : 'MAXCOAXIALSLOTSPACING' ;
K_MAXEDGESLOTSPACING           : 'MAXEDGESLOTSPACING' ;
K_SPLITWIREWIDTH               : 'SPLITWIREWIDTH' ;
K_MINIMUMDENSITY               : 'MINIMUMDENSITY' ;
K_MAXIMUMDENSITY               : 'MAXIMUMDENSITY' ;
K_DENSITYCHECKWINDOW           : 'DENSITYCHECKWINDOW' ;
K_DENSITYCHECKSTEP             : 'DENSITYCHECKSTEP' ;
K_FILLACTIVESPACING            : 'FILLACTIVESPACING' ;
K_MINIMUMCUT                   : 'MINIMUMCUT' ;
K_ADJACENTCUTS                 : 'ADJACENTCUTS' ;
K_ANTENNAMODEL                 : 'ANTENNAMODEL' ;
K_BUMP                         : 'BUMP' ;
K_ENCLOSURE                    : 'ENCLOSURE' ;
K_FROMABOVE                    : 'FROMABOVE' ;
K_FROMBELOW                    : 'FROMBELOW' ;
K_IMPLANT                      : 'IMPLANT' ;
K_LENGTH                       : 'LENGTH' ;
K_MAXVIASTACK                  : 'MAXVIASTACK' ;
K_AREAIO                       : 'AREAIO' ;
K_BLACKBOX                     : 'BLACKBOX' ;
K_MAXWIDTH                     : 'MAXWIDTH' ;
K_MINENCLOSEDAREA              : 'MINENCLOSEDAREA' ;
K_MINSTEP                      : 'MINSTEP' ;
K_ORIENT                       : 'ORIENT' ;
K_OXIDE1                       : 'OXIDE1' ;
K_OXIDE2                       : 'OXIDE2' ;
K_OXIDE3                       : 'OXIDE3' ;
K_OXIDE4                       : 'OXIDE4' ;
K_PARALLELRUNLENGTH            : 'PARALLELRUNLENGTH' ;
K_MINWIDTH                     : 'MINWIDTH' ;
K_PROTRUSIONWIDTH              : 'PROTRUSIONWIDTH' ;
K_SPACINGTABLE                 : 'SPACINGTABLE' ;
K_WITHIN                       : 'WITHIN' ;
K_ABOVE                        : 'ABOVE' ;
K_BELOW                        : 'BELOW' ;
K_CENTERTOCENTER               : 'CENTERTOCENTER' ;
K_CUTSIZE                      : 'CUTSIZE' ;
K_CUTSPACING                   : 'CUTSPACING' ;
K_DENSITY                      : 'DENSITY' ;
K_DIAG45                       : 'DIAG45' ;
K_DIAG135                      : 'DIAG135' ;
K_MASK                         : 'MASK' ;
K_DIAGMINEDGELENGTH            : 'DIAGMINEDGELENGTH' ;
K_DIAGSPACING                  : 'DIAGSPACING' ;
K_DIAGPITCH                    : 'DIAGPITCH' ;
K_DIAGWIDTH                    : 'DIAGWIDTH' ;
K_GENERATED                    : 'GENERATED' ;
K_GROUNDSENSITIVITY            : 'GROUNDSENSITIVITY' ;
K_HARDSPACING                  : 'HARDSPACING' ;
K_INSIDECORNER                 : 'INSIDECORNER' ;
K_LAYERS                       : 'LAYERS' ;
K_LENGTHSUM                    : 'LENGTHSUM' ;
K_MICRONS                      : 'MICRONS' ;
K_MINCUTS                      : 'MINCUTS' ;
K_MINSIZE                      : 'MINSIZE' ;
K_NETEXPR                      : 'NETEXPR' ;
K_OUTSIDECORNER                : 'OUTSIDECORNER' ;
K_PREFERENCLOSURE              : 'PREFERENCLOSURE' ;
K_ROWCOL                       : 'ROWCOL' ;
K_ROWPATTERN                   : 'ROWPATTERN' ;
K_SOFT                         : 'SOFT' ;
K_SUPPLYSENSITIVITY            : 'SUPPLYSENSITIVITY' ;
K_USEVIA                       : 'USEVIA' ;
K_USEVIARULE                   : 'USEVIARULE' ;
K_WELLTAP                      : 'WELLTAP' ;
K_ARRAYCUTS                    : 'ARRAYCUTS' ;
K_ARRAYSPACING                 : 'ARRAYSPACING' ;
K_ANTENNAAREADIFFREDUCEPWL     : 'ANTENNAAREADIFFREDUCEPWL' ;
K_ANTENNAAREAMINUSDIFF         : 'ANTENNAAREAMINUSDIFF' ;
K_ANTENNACUMROUTINGPLUSCUT     : 'ANTENNACUMROUTINGPLUSCUT' ;
K_ANTENNAGATEPLUSDIFF          : 'ANTENNAGATEPLUSDIFF' ;
K_ENDOFLINE                    : 'ENDOFLINE' ;
K_ENDOFNOTCHWIDTH              : 'ENDOFNOTCHWIDTH' ;
K_EXCEPTEXTRACUT               : 'EXCEPTEXTRACUT' ;
K_EXCEPTSAMEPGNET              : 'EXCEPTSAMEPGNET' ;
K_EXCEPTPGNET                  : 'EXCEPTPGNET' ;
K_LONGARRAY                    : 'LONGARRAY' ;
K_MAXEDGES                     : 'MAXEDGES' ;
K_NOTCHLENGTH                  : 'NOTCHLENGTH' ;
K_NOTCHSPACING                 : 'NOTCHSPACING' ;
K_ORTHOGONAL                   : 'ORTHOGONAL' ;
K_PARALLELEDGE                 : 'PARALLELEDGE' ;
K_PARALLELOVERLAP              : 'PARALLELOVERLAP' ;
K_PGONLY                       : 'PGONLY' ;
K_PRL                          : 'PRL' ;
K_TWOEDGES                     : 'TWOEDGES' ;
K_TWOWIDTHS                    : 'TWOWIDTHS' ;

NUMBER                         : [\-]?[0-9]+ | [\-]?[0-9]+[.][0-9]+ ;
T_STRING                       : [a-z0-9A-Z_\[\]\<\>\/]+ ;
QSTRING                        : ["][a-z0-9A-Z_\[\]\<\>\/ ;.\n]+["] ;

COMMENT                        : '#' ~[\n]+ '\n'  -> skip;
SPACE                          : [ \n\t] -> skip ;

