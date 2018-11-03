# Generated from LEF.g4 by ANTLR 4.5.1
import sys
from antlr4 import *

if __name__ is not None and "." in __name__:
    from .LEFParser import LEFParser
else:
    from LEFParser import LEFParser

# This class defines a complete listener for a parse tree produced by LEFParser.
class LEFListener(ParseTreeListener):

    # Enter a parse tree produced by LEFParser#lef_file.
    def enterLef_file(self, ctx:LEFParser.Lef_fileContext):
        pass

    # Exit a parse tree produced by LEFParser#lef_file.
    def exitLef_file(self, ctx:LEFParser.Lef_fileContext):
        pass


    # Enter a parse tree produced by LEFParser#lef_rules.
    def enterLef_rules(self, ctx:LEFParser.Lef_rulesContext):
        pass

    # Exit a parse tree produced by LEFParser#lef_rules.
    def exitLef_rules(self, ctx:LEFParser.Lef_rulesContext):
        pass


    # Enter a parse tree produced by LEFParser#end_library.
    def enterEnd_library(self, ctx:LEFParser.End_libraryContext):
        pass

    # Exit a parse tree produced by LEFParser#end_library.
    def exitEnd_library(self, ctx:LEFParser.End_libraryContext):
        pass


    # Enter a parse tree produced by LEFParser#lef_rule.
    def enterLef_rule(self, ctx:LEFParser.Lef_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#lef_rule.
    def exitLef_rule(self, ctx:LEFParser.Lef_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#version.
    def enterVersion(self, ctx:LEFParser.VersionContext):
        pass

    # Exit a parse tree produced by LEFParser#version.
    def exitVersion(self, ctx:LEFParser.VersionContext):
        pass


    # Enter a parse tree produced by LEFParser#int_number.
    def enterInt_number(self, ctx:LEFParser.Int_numberContext):
        pass

    # Exit a parse tree produced by LEFParser#int_number.
    def exitInt_number(self, ctx:LEFParser.Int_numberContext):
        pass


    # Enter a parse tree produced by LEFParser#dividerchar.
    def enterDividerchar(self, ctx:LEFParser.DividercharContext):
        pass

    # Exit a parse tree produced by LEFParser#dividerchar.
    def exitDividerchar(self, ctx:LEFParser.DividercharContext):
        pass


    # Enter a parse tree produced by LEFParser#busbitchars.
    def enterBusbitchars(self, ctx:LEFParser.BusbitcharsContext):
        pass

    # Exit a parse tree produced by LEFParser#busbitchars.
    def exitBusbitchars(self, ctx:LEFParser.BusbitcharsContext):
        pass


    # Enter a parse tree produced by LEFParser#case_sensitivity.
    def enterCase_sensitivity(self, ctx:LEFParser.Case_sensitivityContext):
        pass

    # Exit a parse tree produced by LEFParser#case_sensitivity.
    def exitCase_sensitivity(self, ctx:LEFParser.Case_sensitivityContext):
        pass


    # Enter a parse tree produced by LEFParser#wireextension.
    def enterWireextension(self, ctx:LEFParser.WireextensionContext):
        pass

    # Exit a parse tree produced by LEFParser#wireextension.
    def exitWireextension(self, ctx:LEFParser.WireextensionContext):
        pass


    # Enter a parse tree produced by LEFParser#fixedmask.
    def enterFixedmask(self, ctx:LEFParser.FixedmaskContext):
        pass

    # Exit a parse tree produced by LEFParser#fixedmask.
    def exitFixedmask(self, ctx:LEFParser.FixedmaskContext):
        pass


    # Enter a parse tree produced by LEFParser#manufacturing.
    def enterManufacturing(self, ctx:LEFParser.ManufacturingContext):
        pass

    # Exit a parse tree produced by LEFParser#manufacturing.
    def exitManufacturing(self, ctx:LEFParser.ManufacturingContext):
        pass


    # Enter a parse tree produced by LEFParser#useminspacing.
    def enterUseminspacing(self, ctx:LEFParser.UseminspacingContext):
        pass

    # Exit a parse tree produced by LEFParser#useminspacing.
    def exitUseminspacing(self, ctx:LEFParser.UseminspacingContext):
        pass


    # Enter a parse tree produced by LEFParser#clearancemeasure.
    def enterClearancemeasure(self, ctx:LEFParser.ClearancemeasureContext):
        pass

    # Exit a parse tree produced by LEFParser#clearancemeasure.
    def exitClearancemeasure(self, ctx:LEFParser.ClearancemeasureContext):
        pass


    # Enter a parse tree produced by LEFParser#clearance_type.
    def enterClearance_type(self, ctx:LEFParser.Clearance_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#clearance_type.
    def exitClearance_type(self, ctx:LEFParser.Clearance_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#spacing_type.
    def enterSpacing_type(self, ctx:LEFParser.Spacing_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#spacing_type.
    def exitSpacing_type(self, ctx:LEFParser.Spacing_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#spacing_value.
    def enterSpacing_value(self, ctx:LEFParser.Spacing_valueContext):
        pass

    # Exit a parse tree produced by LEFParser#spacing_value.
    def exitSpacing_value(self, ctx:LEFParser.Spacing_valueContext):
        pass


    # Enter a parse tree produced by LEFParser#units_section.
    def enterUnits_section(self, ctx:LEFParser.Units_sectionContext):
        pass

    # Exit a parse tree produced by LEFParser#units_section.
    def exitUnits_section(self, ctx:LEFParser.Units_sectionContext):
        pass


    # Enter a parse tree produced by LEFParser#start_units.
    def enterStart_units(self, ctx:LEFParser.Start_unitsContext):
        pass

    # Exit a parse tree produced by LEFParser#start_units.
    def exitStart_units(self, ctx:LEFParser.Start_unitsContext):
        pass


    # Enter a parse tree produced by LEFParser#units_rules.
    def enterUnits_rules(self, ctx:LEFParser.Units_rulesContext):
        pass

    # Exit a parse tree produced by LEFParser#units_rules.
    def exitUnits_rules(self, ctx:LEFParser.Units_rulesContext):
        pass


    # Enter a parse tree produced by LEFParser#units_rule.
    def enterUnits_rule(self, ctx:LEFParser.Units_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#units_rule.
    def exitUnits_rule(self, ctx:LEFParser.Units_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_rule.
    def enterLayer_rule(self, ctx:LEFParser.Layer_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_rule.
    def exitLayer_rule(self, ctx:LEFParser.Layer_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#start_layer.
    def enterStart_layer(self, ctx:LEFParser.Start_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#start_layer.
    def exitStart_layer(self, ctx:LEFParser.Start_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#end_layer.
    def enterEnd_layer(self, ctx:LEFParser.End_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#end_layer.
    def exitEnd_layer(self, ctx:LEFParser.End_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_options.
    def enterLayer_options(self, ctx:LEFParser.Layer_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_options.
    def exitLayer_options(self, ctx:LEFParser.Layer_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_option.
    def enterLayer_option(self, ctx:LEFParser.Layer_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_option.
    def exitLayer_option(self, ctx:LEFParser.Layer_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_arraySpacing_long.
    def enterLayer_arraySpacing_long(self, ctx:LEFParser.Layer_arraySpacing_longContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_arraySpacing_long.
    def exitLayer_arraySpacing_long(self, ctx:LEFParser.Layer_arraySpacing_longContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_arraySpacing_width.
    def enterLayer_arraySpacing_width(self, ctx:LEFParser.Layer_arraySpacing_widthContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_arraySpacing_width.
    def exitLayer_arraySpacing_width(self, ctx:LEFParser.Layer_arraySpacing_widthContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_arraySpacing_arraycuts.
    def enterLayer_arraySpacing_arraycuts(self, ctx:LEFParser.Layer_arraySpacing_arraycutsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_arraySpacing_arraycuts.
    def exitLayer_arraySpacing_arraycuts(self, ctx:LEFParser.Layer_arraySpacing_arraycutsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_arraySpacing_arraycut.
    def enterLayer_arraySpacing_arraycut(self, ctx:LEFParser.Layer_arraySpacing_arraycutContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_arraySpacing_arraycut.
    def exitLayer_arraySpacing_arraycut(self, ctx:LEFParser.Layer_arraySpacing_arraycutContext):
        pass


    # Enter a parse tree produced by LEFParser#sp_options.
    def enterSp_options(self, ctx:LEFParser.Sp_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#sp_options.
    def exitSp_options(self, ctx:LEFParser.Sp_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_spacingtable_opts.
    def enterLayer_spacingtable_opts(self, ctx:LEFParser.Layer_spacingtable_optsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_spacingtable_opts.
    def exitLayer_spacingtable_opts(self, ctx:LEFParser.Layer_spacingtable_optsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_spacingtable_opt.
    def enterLayer_spacingtable_opt(self, ctx:LEFParser.Layer_spacingtable_optContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_spacingtable_opt.
    def exitLayer_spacingtable_opt(self, ctx:LEFParser.Layer_spacingtable_optContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_enclosure_type_opt.
    def enterLayer_enclosure_type_opt(self, ctx:LEFParser.Layer_enclosure_type_optContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_enclosure_type_opt.
    def exitLayer_enclosure_type_opt(self, ctx:LEFParser.Layer_enclosure_type_optContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_enclosure_width_opt.
    def enterLayer_enclosure_width_opt(self, ctx:LEFParser.Layer_enclosure_width_optContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_enclosure_width_opt.
    def exitLayer_enclosure_width_opt(self, ctx:LEFParser.Layer_enclosure_width_optContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_enclosure_width_except_opt.
    def enterLayer_enclosure_width_except_opt(self, ctx:LEFParser.Layer_enclosure_width_except_optContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_enclosure_width_except_opt.
    def exitLayer_enclosure_width_except_opt(self, ctx:LEFParser.Layer_enclosure_width_except_optContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_preferenclosure_width_opt.
    def enterLayer_preferenclosure_width_opt(self, ctx:LEFParser.Layer_preferenclosure_width_optContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_preferenclosure_width_opt.
    def exitLayer_preferenclosure_width_opt(self, ctx:LEFParser.Layer_preferenclosure_width_optContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_minimumcut_within.
    def enterLayer_minimumcut_within(self, ctx:LEFParser.Layer_minimumcut_withinContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_minimumcut_within.
    def exitLayer_minimumcut_within(self, ctx:LEFParser.Layer_minimumcut_withinContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_minimumcut_from.
    def enterLayer_minimumcut_from(self, ctx:LEFParser.Layer_minimumcut_fromContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_minimumcut_from.
    def exitLayer_minimumcut_from(self, ctx:LEFParser.Layer_minimumcut_fromContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_minimumcut_length.
    def enterLayer_minimumcut_length(self, ctx:LEFParser.Layer_minimumcut_lengthContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_minimumcut_length.
    def exitLayer_minimumcut_length(self, ctx:LEFParser.Layer_minimumcut_lengthContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_minstep_options.
    def enterLayer_minstep_options(self, ctx:LEFParser.Layer_minstep_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_minstep_options.
    def exitLayer_minstep_options(self, ctx:LEFParser.Layer_minstep_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_minstep_option.
    def enterLayer_minstep_option(self, ctx:LEFParser.Layer_minstep_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_minstep_option.
    def exitLayer_minstep_option(self, ctx:LEFParser.Layer_minstep_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_minstep_type.
    def enterLayer_minstep_type(self, ctx:LEFParser.Layer_minstep_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_minstep_type.
    def exitLayer_minstep_type(self, ctx:LEFParser.Layer_minstep_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_antenna_pwl.
    def enterLayer_antenna_pwl(self, ctx:LEFParser.Layer_antenna_pwlContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_antenna_pwl.
    def exitLayer_antenna_pwl(self, ctx:LEFParser.Layer_antenna_pwlContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_diffusion_ratios.
    def enterLayer_diffusion_ratios(self, ctx:LEFParser.Layer_diffusion_ratiosContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_diffusion_ratios.
    def exitLayer_diffusion_ratios(self, ctx:LEFParser.Layer_diffusion_ratiosContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_diffusion_ratio.
    def enterLayer_diffusion_ratio(self, ctx:LEFParser.Layer_diffusion_ratioContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_diffusion_ratio.
    def exitLayer_diffusion_ratio(self, ctx:LEFParser.Layer_diffusion_ratioContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_antenna_duo.
    def enterLayer_antenna_duo(self, ctx:LEFParser.Layer_antenna_duoContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_antenna_duo.
    def exitLayer_antenna_duo(self, ctx:LEFParser.Layer_antenna_duoContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_table_type.
    def enterLayer_table_type(self, ctx:LEFParser.Layer_table_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_table_type.
    def exitLayer_table_type(self, ctx:LEFParser.Layer_table_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_frequency.
    def enterLayer_frequency(self, ctx:LEFParser.Layer_frequencyContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_frequency.
    def exitLayer_frequency(self, ctx:LEFParser.Layer_frequencyContext):
        pass


    # Enter a parse tree produced by LEFParser#ac_layer_table_opt.
    def enterAc_layer_table_opt(self, ctx:LEFParser.Ac_layer_table_optContext):
        pass

    # Exit a parse tree produced by LEFParser#ac_layer_table_opt.
    def exitAc_layer_table_opt(self, ctx:LEFParser.Ac_layer_table_optContext):
        pass


    # Enter a parse tree produced by LEFParser#dc_layer_table.
    def enterDc_layer_table(self, ctx:LEFParser.Dc_layer_tableContext):
        pass

    # Exit a parse tree produced by LEFParser#dc_layer_table.
    def exitDc_layer_table(self, ctx:LEFParser.Dc_layer_tableContext):
        pass


    # Enter a parse tree produced by LEFParser#int_number_list.
    def enterInt_number_list(self, ctx:LEFParser.Int_number_listContext):
        pass

    # Exit a parse tree produced by LEFParser#int_number_list.
    def exitInt_number_list(self, ctx:LEFParser.Int_number_listContext):
        pass


    # Enter a parse tree produced by LEFParser#number_list.
    def enterNumber_list(self, ctx:LEFParser.Number_listContext):
        pass

    # Exit a parse tree produced by LEFParser#number_list.
    def exitNumber_list(self, ctx:LEFParser.Number_listContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_prop_list.
    def enterLayer_prop_list(self, ctx:LEFParser.Layer_prop_listContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_prop_list.
    def exitLayer_prop_list(self, ctx:LEFParser.Layer_prop_listContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_prop.
    def enterLayer_prop(self, ctx:LEFParser.Layer_propContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_prop.
    def exitLayer_prop(self, ctx:LEFParser.Layer_propContext):
        pass


    # Enter a parse tree produced by LEFParser#current_density_pwl_list.
    def enterCurrent_density_pwl_list(self, ctx:LEFParser.Current_density_pwl_listContext):
        pass

    # Exit a parse tree produced by LEFParser#current_density_pwl_list.
    def exitCurrent_density_pwl_list(self, ctx:LEFParser.Current_density_pwl_listContext):
        pass


    # Enter a parse tree produced by LEFParser#current_density_pwl.
    def enterCurrent_density_pwl(self, ctx:LEFParser.Current_density_pwlContext):
        pass

    # Exit a parse tree produced by LEFParser#current_density_pwl.
    def exitCurrent_density_pwl(self, ctx:LEFParser.Current_density_pwlContext):
        pass


    # Enter a parse tree produced by LEFParser#cap_points.
    def enterCap_points(self, ctx:LEFParser.Cap_pointsContext):
        pass

    # Exit a parse tree produced by LEFParser#cap_points.
    def exitCap_points(self, ctx:LEFParser.Cap_pointsContext):
        pass


    # Enter a parse tree produced by LEFParser#cap_point.
    def enterCap_point(self, ctx:LEFParser.Cap_pointContext):
        pass

    # Exit a parse tree produced by LEFParser#cap_point.
    def exitCap_point(self, ctx:LEFParser.Cap_pointContext):
        pass


    # Enter a parse tree produced by LEFParser#res_points.
    def enterRes_points(self, ctx:LEFParser.Res_pointsContext):
        pass

    # Exit a parse tree produced by LEFParser#res_points.
    def exitRes_points(self, ctx:LEFParser.Res_pointsContext):
        pass


    # Enter a parse tree produced by LEFParser#res_point.
    def enterRes_point(self, ctx:LEFParser.Res_pointContext):
        pass

    # Exit a parse tree produced by LEFParser#res_point.
    def exitRes_point(self, ctx:LEFParser.Res_pointContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_type.
    def enterLayer_type(self, ctx:LEFParser.Layer_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_type.
    def exitLayer_type(self, ctx:LEFParser.Layer_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_direction.
    def enterLayer_direction(self, ctx:LEFParser.Layer_directionContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_direction.
    def exitLayer_direction(self, ctx:LEFParser.Layer_directionContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_minen_width.
    def enterLayer_minen_width(self, ctx:LEFParser.Layer_minen_widthContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_minen_width.
    def exitLayer_minen_width(self, ctx:LEFParser.Layer_minen_widthContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_oxide.
    def enterLayer_oxide(self, ctx:LEFParser.Layer_oxideContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_oxide.
    def exitLayer_oxide(self, ctx:LEFParser.Layer_oxideContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_sp_parallel_widths.
    def enterLayer_sp_parallel_widths(self, ctx:LEFParser.Layer_sp_parallel_widthsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_sp_parallel_widths.
    def exitLayer_sp_parallel_widths(self, ctx:LEFParser.Layer_sp_parallel_widthsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_sp_parallel_width.
    def enterLayer_sp_parallel_width(self, ctx:LEFParser.Layer_sp_parallel_widthContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_sp_parallel_width.
    def exitLayer_sp_parallel_width(self, ctx:LEFParser.Layer_sp_parallel_widthContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_sp_TwoWidths.
    def enterLayer_sp_TwoWidths(self, ctx:LEFParser.Layer_sp_TwoWidthsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_sp_TwoWidths.
    def exitLayer_sp_TwoWidths(self, ctx:LEFParser.Layer_sp_TwoWidthsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_sp_TwoWidth.
    def enterLayer_sp_TwoWidth(self, ctx:LEFParser.Layer_sp_TwoWidthContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_sp_TwoWidth.
    def exitLayer_sp_TwoWidth(self, ctx:LEFParser.Layer_sp_TwoWidthContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_sp_TwoWidthsPRL.
    def enterLayer_sp_TwoWidthsPRL(self, ctx:LEFParser.Layer_sp_TwoWidthsPRLContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_sp_TwoWidthsPRL.
    def exitLayer_sp_TwoWidthsPRL(self, ctx:LEFParser.Layer_sp_TwoWidthsPRLContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_sp_influence_widths.
    def enterLayer_sp_influence_widths(self, ctx:LEFParser.Layer_sp_influence_widthsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_sp_influence_widths.
    def exitLayer_sp_influence_widths(self, ctx:LEFParser.Layer_sp_influence_widthsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_sp_influence_width.
    def enterLayer_sp_influence_width(self, ctx:LEFParser.Layer_sp_influence_widthContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_sp_influence_width.
    def exitLayer_sp_influence_width(self, ctx:LEFParser.Layer_sp_influence_widthContext):
        pass


    # Enter a parse tree produced by LEFParser#maxstack_via.
    def enterMaxstack_via(self, ctx:LEFParser.Maxstack_viaContext):
        pass

    # Exit a parse tree produced by LEFParser#maxstack_via.
    def exitMaxstack_via(self, ctx:LEFParser.Maxstack_viaContext):
        pass


    # Enter a parse tree produced by LEFParser#via.
    def enterVia(self, ctx:LEFParser.ViaContext):
        pass

    # Exit a parse tree produced by LEFParser#via.
    def exitVia(self, ctx:LEFParser.ViaContext):
        pass


    # Enter a parse tree produced by LEFParser#via_keyword.
    def enterVia_keyword(self, ctx:LEFParser.Via_keywordContext):
        pass

    # Exit a parse tree produced by LEFParser#via_keyword.
    def exitVia_keyword(self, ctx:LEFParser.Via_keywordContext):
        pass


    # Enter a parse tree produced by LEFParser#start_via.
    def enterStart_via(self, ctx:LEFParser.Start_viaContext):
        pass

    # Exit a parse tree produced by LEFParser#start_via.
    def exitStart_via(self, ctx:LEFParser.Start_viaContext):
        pass


    # Enter a parse tree produced by LEFParser#via_viarule.
    def enterVia_viarule(self, ctx:LEFParser.Via_viaruleContext):
        pass

    # Exit a parse tree produced by LEFParser#via_viarule.
    def exitVia_viarule(self, ctx:LEFParser.Via_viaruleContext):
        pass


    # Enter a parse tree produced by LEFParser#via_viarule_options.
    def enterVia_viarule_options(self, ctx:LEFParser.Via_viarule_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#via_viarule_options.
    def exitVia_viarule_options(self, ctx:LEFParser.Via_viarule_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#via_viarule_option.
    def enterVia_viarule_option(self, ctx:LEFParser.Via_viarule_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#via_viarule_option.
    def exitVia_viarule_option(self, ctx:LEFParser.Via_viarule_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#via_option.
    def enterVia_option(self, ctx:LEFParser.Via_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#via_option.
    def exitVia_option(self, ctx:LEFParser.Via_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#via_other_options.
    def enterVia_other_options(self, ctx:LEFParser.Via_other_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#via_other_options.
    def exitVia_other_options(self, ctx:LEFParser.Via_other_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#via_more_options.
    def enterVia_more_options(self, ctx:LEFParser.Via_more_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#via_more_options.
    def exitVia_more_options(self, ctx:LEFParser.Via_more_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#via_other_option.
    def enterVia_other_option(self, ctx:LEFParser.Via_other_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#via_other_option.
    def exitVia_other_option(self, ctx:LEFParser.Via_other_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#via_prop_list.
    def enterVia_prop_list(self, ctx:LEFParser.Via_prop_listContext):
        pass

    # Exit a parse tree produced by LEFParser#via_prop_list.
    def exitVia_prop_list(self, ctx:LEFParser.Via_prop_listContext):
        pass


    # Enter a parse tree produced by LEFParser#via_name_value_pair.
    def enterVia_name_value_pair(self, ctx:LEFParser.Via_name_value_pairContext):
        pass

    # Exit a parse tree produced by LEFParser#via_name_value_pair.
    def exitVia_name_value_pair(self, ctx:LEFParser.Via_name_value_pairContext):
        pass


    # Enter a parse tree produced by LEFParser#via_foreign.
    def enterVia_foreign(self, ctx:LEFParser.Via_foreignContext):
        pass

    # Exit a parse tree produced by LEFParser#via_foreign.
    def exitVia_foreign(self, ctx:LEFParser.Via_foreignContext):
        pass


    # Enter a parse tree produced by LEFParser#start_foreign.
    def enterStart_foreign(self, ctx:LEFParser.Start_foreignContext):
        pass

    # Exit a parse tree produced by LEFParser#start_foreign.
    def exitStart_foreign(self, ctx:LEFParser.Start_foreignContext):
        pass


    # Enter a parse tree produced by LEFParser#orientation.
    def enterOrientation(self, ctx:LEFParser.OrientationContext):
        pass

    # Exit a parse tree produced by LEFParser#orientation.
    def exitOrientation(self, ctx:LEFParser.OrientationContext):
        pass


    # Enter a parse tree produced by LEFParser#via_layer_rule.
    def enterVia_layer_rule(self, ctx:LEFParser.Via_layer_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#via_layer_rule.
    def exitVia_layer_rule(self, ctx:LEFParser.Via_layer_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#via_layer.
    def enterVia_layer(self, ctx:LEFParser.Via_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#via_layer.
    def exitVia_layer(self, ctx:LEFParser.Via_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#via_geometries.
    def enterVia_geometries(self, ctx:LEFParser.Via_geometriesContext):
        pass

    # Exit a parse tree produced by LEFParser#via_geometries.
    def exitVia_geometries(self, ctx:LEFParser.Via_geometriesContext):
        pass


    # Enter a parse tree produced by LEFParser#via_geometry.
    def enterVia_geometry(self, ctx:LEFParser.Via_geometryContext):
        pass

    # Exit a parse tree produced by LEFParser#via_geometry.
    def exitVia_geometry(self, ctx:LEFParser.Via_geometryContext):
        pass


    # Enter a parse tree produced by LEFParser#end_via.
    def enterEnd_via(self, ctx:LEFParser.End_viaContext):
        pass

    # Exit a parse tree produced by LEFParser#end_via.
    def exitEnd_via(self, ctx:LEFParser.End_viaContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_keyword.
    def enterViarule_keyword(self, ctx:LEFParser.Viarule_keywordContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_keyword.
    def exitViarule_keyword(self, ctx:LEFParser.Viarule_keywordContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule.
    def enterViarule(self, ctx:LEFParser.ViaruleContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule.
    def exitViarule(self, ctx:LEFParser.ViaruleContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_generate.
    def enterViarule_generate(self, ctx:LEFParser.Viarule_generateContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_generate.
    def exitViarule_generate(self, ctx:LEFParser.Viarule_generateContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_generate_default.
    def enterViarule_generate_default(self, ctx:LEFParser.Viarule_generate_defaultContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_generate_default.
    def exitViarule_generate_default(self, ctx:LEFParser.Viarule_generate_defaultContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer_list.
    def enterViarule_layer_list(self, ctx:LEFParser.Viarule_layer_listContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer_list.
    def exitViarule_layer_list(self, ctx:LEFParser.Viarule_layer_listContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_viarule_props.
    def enterOpt_viarule_props(self, ctx:LEFParser.Opt_viarule_propsContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_viarule_props.
    def exitOpt_viarule_props(self, ctx:LEFParser.Opt_viarule_propsContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_props.
    def enterViarule_props(self, ctx:LEFParser.Viarule_propsContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_props.
    def exitViarule_props(self, ctx:LEFParser.Viarule_propsContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_prop.
    def enterViarule_prop(self, ctx:LEFParser.Viarule_propContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_prop.
    def exitViarule_prop(self, ctx:LEFParser.Viarule_propContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_prop_list.
    def enterViarule_prop_list(self, ctx:LEFParser.Viarule_prop_listContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_prop_list.
    def exitViarule_prop_list(self, ctx:LEFParser.Viarule_prop_listContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer.
    def enterViarule_layer(self, ctx:LEFParser.Viarule_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer.
    def exitViarule_layer(self, ctx:LEFParser.Viarule_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#via_names.
    def enterVia_names(self, ctx:LEFParser.Via_namesContext):
        pass

    # Exit a parse tree produced by LEFParser#via_names.
    def exitVia_names(self, ctx:LEFParser.Via_namesContext):
        pass


    # Enter a parse tree produced by LEFParser#via_name.
    def enterVia_name(self, ctx:LEFParser.Via_nameContext):
        pass

    # Exit a parse tree produced by LEFParser#via_name.
    def exitVia_name(self, ctx:LEFParser.Via_nameContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer_name.
    def enterViarule_layer_name(self, ctx:LEFParser.Viarule_layer_nameContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer_name.
    def exitViarule_layer_name(self, ctx:LEFParser.Viarule_layer_nameContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer_options.
    def enterViarule_layer_options(self, ctx:LEFParser.Viarule_layer_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer_options.
    def exitViarule_layer_options(self, ctx:LEFParser.Viarule_layer_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer_option.
    def enterViarule_layer_option(self, ctx:LEFParser.Viarule_layer_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer_option.
    def exitViarule_layer_option(self, ctx:LEFParser.Viarule_layer_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#end_viarule.
    def enterEnd_viarule(self, ctx:LEFParser.End_viaruleContext):
        pass

    # Exit a parse tree produced by LEFParser#end_viarule.
    def exitEnd_viarule(self, ctx:LEFParser.End_viaruleContext):
        pass


    # Enter a parse tree produced by LEFParser#spacing_rule.
    def enterSpacing_rule(self, ctx:LEFParser.Spacing_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#spacing_rule.
    def exitSpacing_rule(self, ctx:LEFParser.Spacing_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#start_spacing.
    def enterStart_spacing(self, ctx:LEFParser.Start_spacingContext):
        pass

    # Exit a parse tree produced by LEFParser#start_spacing.
    def exitStart_spacing(self, ctx:LEFParser.Start_spacingContext):
        pass


    # Enter a parse tree produced by LEFParser#end_spacing.
    def enterEnd_spacing(self, ctx:LEFParser.End_spacingContext):
        pass

    # Exit a parse tree produced by LEFParser#end_spacing.
    def exitEnd_spacing(self, ctx:LEFParser.End_spacingContext):
        pass


    # Enter a parse tree produced by LEFParser#spacings.
    def enterSpacings(self, ctx:LEFParser.SpacingsContext):
        pass

    # Exit a parse tree produced by LEFParser#spacings.
    def exitSpacings(self, ctx:LEFParser.SpacingsContext):
        pass


    # Enter a parse tree produced by LEFParser#spacing.
    def enterSpacing(self, ctx:LEFParser.SpacingContext):
        pass

    # Exit a parse tree produced by LEFParser#spacing.
    def exitSpacing(self, ctx:LEFParser.SpacingContext):
        pass


    # Enter a parse tree produced by LEFParser#samenet_keyword.
    def enterSamenet_keyword(self, ctx:LEFParser.Samenet_keywordContext):
        pass

    # Exit a parse tree produced by LEFParser#samenet_keyword.
    def exitSamenet_keyword(self, ctx:LEFParser.Samenet_keywordContext):
        pass


    # Enter a parse tree produced by LEFParser#maskColor.
    def enterMaskColor(self, ctx:LEFParser.MaskColorContext):
        pass

    # Exit a parse tree produced by LEFParser#maskColor.
    def exitMaskColor(self, ctx:LEFParser.MaskColorContext):
        pass


    # Enter a parse tree produced by LEFParser#irdrop.
    def enterIrdrop(self, ctx:LEFParser.IrdropContext):
        pass

    # Exit a parse tree produced by LEFParser#irdrop.
    def exitIrdrop(self, ctx:LEFParser.IrdropContext):
        pass


    # Enter a parse tree produced by LEFParser#start_irdrop.
    def enterStart_irdrop(self, ctx:LEFParser.Start_irdropContext):
        pass

    # Exit a parse tree produced by LEFParser#start_irdrop.
    def exitStart_irdrop(self, ctx:LEFParser.Start_irdropContext):
        pass


    # Enter a parse tree produced by LEFParser#end_irdrop.
    def enterEnd_irdrop(self, ctx:LEFParser.End_irdropContext):
        pass

    # Exit a parse tree produced by LEFParser#end_irdrop.
    def exitEnd_irdrop(self, ctx:LEFParser.End_irdropContext):
        pass


    # Enter a parse tree produced by LEFParser#ir_tables.
    def enterIr_tables(self, ctx:LEFParser.Ir_tablesContext):
        pass

    # Exit a parse tree produced by LEFParser#ir_tables.
    def exitIr_tables(self, ctx:LEFParser.Ir_tablesContext):
        pass


    # Enter a parse tree produced by LEFParser#ir_table.
    def enterIr_table(self, ctx:LEFParser.Ir_tableContext):
        pass

    # Exit a parse tree produced by LEFParser#ir_table.
    def exitIr_table(self, ctx:LEFParser.Ir_tableContext):
        pass


    # Enter a parse tree produced by LEFParser#ir_table_values.
    def enterIr_table_values(self, ctx:LEFParser.Ir_table_valuesContext):
        pass

    # Exit a parse tree produced by LEFParser#ir_table_values.
    def exitIr_table_values(self, ctx:LEFParser.Ir_table_valuesContext):
        pass


    # Enter a parse tree produced by LEFParser#ir_table_value.
    def enterIr_table_value(self, ctx:LEFParser.Ir_table_valueContext):
        pass

    # Exit a parse tree produced by LEFParser#ir_table_value.
    def exitIr_table_value(self, ctx:LEFParser.Ir_table_valueContext):
        pass


    # Enter a parse tree produced by LEFParser#ir_tablename.
    def enterIr_tablename(self, ctx:LEFParser.Ir_tablenameContext):
        pass

    # Exit a parse tree produced by LEFParser#ir_tablename.
    def exitIr_tablename(self, ctx:LEFParser.Ir_tablenameContext):
        pass


    # Enter a parse tree produced by LEFParser#minfeature.
    def enterMinfeature(self, ctx:LEFParser.MinfeatureContext):
        pass

    # Exit a parse tree produced by LEFParser#minfeature.
    def exitMinfeature(self, ctx:LEFParser.MinfeatureContext):
        pass


    # Enter a parse tree produced by LEFParser#dielectric.
    def enterDielectric(self, ctx:LEFParser.DielectricContext):
        pass

    # Exit a parse tree produced by LEFParser#dielectric.
    def exitDielectric(self, ctx:LEFParser.DielectricContext):
        pass


    # Enter a parse tree produced by LEFParser#nondefault_rule.
    def enterNondefault_rule(self, ctx:LEFParser.Nondefault_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#nondefault_rule.
    def exitNondefault_rule(self, ctx:LEFParser.Nondefault_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#end_nd_rule.
    def enterEnd_nd_rule(self, ctx:LEFParser.End_nd_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#end_nd_rule.
    def exitEnd_nd_rule(self, ctx:LEFParser.End_nd_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_hardspacing.
    def enterNd_hardspacing(self, ctx:LEFParser.Nd_hardspacingContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_hardspacing.
    def exitNd_hardspacing(self, ctx:LEFParser.Nd_hardspacingContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_rules.
    def enterNd_rules(self, ctx:LEFParser.Nd_rulesContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_rules.
    def exitNd_rules(self, ctx:LEFParser.Nd_rulesContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_rule.
    def enterNd_rule(self, ctx:LEFParser.Nd_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_rule.
    def exitNd_rule(self, ctx:LEFParser.Nd_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#usevia.
    def enterUsevia(self, ctx:LEFParser.UseviaContext):
        pass

    # Exit a parse tree produced by LEFParser#usevia.
    def exitUsevia(self, ctx:LEFParser.UseviaContext):
        pass


    # Enter a parse tree produced by LEFParser#useviarule.
    def enterUseviarule(self, ctx:LEFParser.UseviaruleContext):
        pass

    # Exit a parse tree produced by LEFParser#useviarule.
    def exitUseviarule(self, ctx:LEFParser.UseviaruleContext):
        pass


    # Enter a parse tree produced by LEFParser#mincuts.
    def enterMincuts(self, ctx:LEFParser.MincutsContext):
        pass

    # Exit a parse tree produced by LEFParser#mincuts.
    def exitMincuts(self, ctx:LEFParser.MincutsContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_prop.
    def enterNd_prop(self, ctx:LEFParser.Nd_propContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_prop.
    def exitNd_prop(self, ctx:LEFParser.Nd_propContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_prop_list.
    def enterNd_prop_list(self, ctx:LEFParser.Nd_prop_listContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_prop_list.
    def exitNd_prop_list(self, ctx:LEFParser.Nd_prop_listContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_layer.
    def enterNd_layer(self, ctx:LEFParser.Nd_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_layer.
    def exitNd_layer(self, ctx:LEFParser.Nd_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_layer_stmts.
    def enterNd_layer_stmts(self, ctx:LEFParser.Nd_layer_stmtsContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_layer_stmts.
    def exitNd_layer_stmts(self, ctx:LEFParser.Nd_layer_stmtsContext):
        pass


    # Enter a parse tree produced by LEFParser#nd_layer_stmt.
    def enterNd_layer_stmt(self, ctx:LEFParser.Nd_layer_stmtContext):
        pass

    # Exit a parse tree produced by LEFParser#nd_layer_stmt.
    def exitNd_layer_stmt(self, ctx:LEFParser.Nd_layer_stmtContext):
        pass


    # Enter a parse tree produced by LEFParser#site.
    def enterSite(self, ctx:LEFParser.SiteContext):
        pass

    # Exit a parse tree produced by LEFParser#site.
    def exitSite(self, ctx:LEFParser.SiteContext):
        pass


    # Enter a parse tree produced by LEFParser#start_site.
    def enterStart_site(self, ctx:LEFParser.Start_siteContext):
        pass

    # Exit a parse tree produced by LEFParser#start_site.
    def exitStart_site(self, ctx:LEFParser.Start_siteContext):
        pass


    # Enter a parse tree produced by LEFParser#end_site.
    def enterEnd_site(self, ctx:LEFParser.End_siteContext):
        pass

    # Exit a parse tree produced by LEFParser#end_site.
    def exitEnd_site(self, ctx:LEFParser.End_siteContext):
        pass


    # Enter a parse tree produced by LEFParser#site_options.
    def enterSite_options(self, ctx:LEFParser.Site_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#site_options.
    def exitSite_options(self, ctx:LEFParser.Site_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#site_option.
    def enterSite_option(self, ctx:LEFParser.Site_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#site_option.
    def exitSite_option(self, ctx:LEFParser.Site_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#site_size.
    def enterSite_size(self, ctx:LEFParser.Site_sizeContext):
        pass

    # Exit a parse tree produced by LEFParser#site_size.
    def exitSite_size(self, ctx:LEFParser.Site_sizeContext):
        pass


    # Enter a parse tree produced by LEFParser#site_class.
    def enterSite_class(self, ctx:LEFParser.Site_classContext):
        pass

    # Exit a parse tree produced by LEFParser#site_class.
    def exitSite_class(self, ctx:LEFParser.Site_classContext):
        pass


    # Enter a parse tree produced by LEFParser#site_symmetry_statement.
    def enterSite_symmetry_statement(self, ctx:LEFParser.Site_symmetry_statementContext):
        pass

    # Exit a parse tree produced by LEFParser#site_symmetry_statement.
    def exitSite_symmetry_statement(self, ctx:LEFParser.Site_symmetry_statementContext):
        pass


    # Enter a parse tree produced by LEFParser#site_symmetries.
    def enterSite_symmetries(self, ctx:LEFParser.Site_symmetriesContext):
        pass

    # Exit a parse tree produced by LEFParser#site_symmetries.
    def exitSite_symmetries(self, ctx:LEFParser.Site_symmetriesContext):
        pass


    # Enter a parse tree produced by LEFParser#site_symmetry.
    def enterSite_symmetry(self, ctx:LEFParser.Site_symmetryContext):
        pass

    # Exit a parse tree produced by LEFParser#site_symmetry.
    def exitSite_symmetry(self, ctx:LEFParser.Site_symmetryContext):
        pass


    # Enter a parse tree produced by LEFParser#site_rowpattern_statement.
    def enterSite_rowpattern_statement(self, ctx:LEFParser.Site_rowpattern_statementContext):
        pass

    # Exit a parse tree produced by LEFParser#site_rowpattern_statement.
    def exitSite_rowpattern_statement(self, ctx:LEFParser.Site_rowpattern_statementContext):
        pass


    # Enter a parse tree produced by LEFParser#site_rowpatterns.
    def enterSite_rowpatterns(self, ctx:LEFParser.Site_rowpatternsContext):
        pass

    # Exit a parse tree produced by LEFParser#site_rowpatterns.
    def exitSite_rowpatterns(self, ctx:LEFParser.Site_rowpatternsContext):
        pass


    # Enter a parse tree produced by LEFParser#site_rowpattern.
    def enterSite_rowpattern(self, ctx:LEFParser.Site_rowpatternContext):
        pass

    # Exit a parse tree produced by LEFParser#site_rowpattern.
    def exitSite_rowpattern(self, ctx:LEFParser.Site_rowpatternContext):
        pass


    # Enter a parse tree produced by LEFParser#pt.
    def enterPt(self, ctx:LEFParser.PtContext):
        pass

    # Exit a parse tree produced by LEFParser#pt.
    def exitPt(self, ctx:LEFParser.PtContext):
        pass


    # Enter a parse tree produced by LEFParser#macro.
    def enterMacro(self, ctx:LEFParser.MacroContext):
        pass

    # Exit a parse tree produced by LEFParser#macro.
    def exitMacro(self, ctx:LEFParser.MacroContext):
        pass


    # Enter a parse tree produced by LEFParser#start_macro.
    def enterStart_macro(self, ctx:LEFParser.Start_macroContext):
        pass

    # Exit a parse tree produced by LEFParser#start_macro.
    def exitStart_macro(self, ctx:LEFParser.Start_macroContext):
        pass


    # Enter a parse tree produced by LEFParser#end_macro.
    def enterEnd_macro(self, ctx:LEFParser.End_macroContext):
        pass

    # Exit a parse tree produced by LEFParser#end_macro.
    def exitEnd_macro(self, ctx:LEFParser.End_macroContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_options.
    def enterMacro_options(self, ctx:LEFParser.Macro_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_options.
    def exitMacro_options(self, ctx:LEFParser.Macro_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_option.
    def enterMacro_option(self, ctx:LEFParser.Macro_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_option.
    def exitMacro_option(self, ctx:LEFParser.Macro_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_prop_list.
    def enterMacro_prop_list(self, ctx:LEFParser.Macro_prop_listContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_prop_list.
    def exitMacro_prop_list(self, ctx:LEFParser.Macro_prop_listContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_symmetry_statement.
    def enterMacro_symmetry_statement(self, ctx:LEFParser.Macro_symmetry_statementContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_symmetry_statement.
    def exitMacro_symmetry_statement(self, ctx:LEFParser.Macro_symmetry_statementContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_symmetries.
    def enterMacro_symmetries(self, ctx:LEFParser.Macro_symmetriesContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_symmetries.
    def exitMacro_symmetries(self, ctx:LEFParser.Macro_symmetriesContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_symmetry.
    def enterMacro_symmetry(self, ctx:LEFParser.Macro_symmetryContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_symmetry.
    def exitMacro_symmetry(self, ctx:LEFParser.Macro_symmetryContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_name_value_pair.
    def enterMacro_name_value_pair(self, ctx:LEFParser.Macro_name_value_pairContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_name_value_pair.
    def exitMacro_name_value_pair(self, ctx:LEFParser.Macro_name_value_pairContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_class.
    def enterMacro_class(self, ctx:LEFParser.Macro_classContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_class.
    def exitMacro_class(self, ctx:LEFParser.Macro_classContext):
        pass


    # Enter a parse tree produced by LEFParser#class_type.
    def enterClass_type(self, ctx:LEFParser.Class_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#class_type.
    def exitClass_type(self, ctx:LEFParser.Class_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#pad_type.
    def enterPad_type(self, ctx:LEFParser.Pad_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#pad_type.
    def exitPad_type(self, ctx:LEFParser.Pad_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#core_type.
    def enterCore_type(self, ctx:LEFParser.Core_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#core_type.
    def exitCore_type(self, ctx:LEFParser.Core_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#endcap_type.
    def enterEndcap_type(self, ctx:LEFParser.Endcap_typeContext):
        pass

    # Exit a parse tree produced by LEFParser#endcap_type.
    def exitEndcap_type(self, ctx:LEFParser.Endcap_typeContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_generator.
    def enterMacro_generator(self, ctx:LEFParser.Macro_generatorContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_generator.
    def exitMacro_generator(self, ctx:LEFParser.Macro_generatorContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_generate.
    def enterMacro_generate(self, ctx:LEFParser.Macro_generateContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_generate.
    def exitMacro_generate(self, ctx:LEFParser.Macro_generateContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_source.
    def enterMacro_source(self, ctx:LEFParser.Macro_sourceContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_source.
    def exitMacro_source(self, ctx:LEFParser.Macro_sourceContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_power.
    def enterMacro_power(self, ctx:LEFParser.Macro_powerContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_power.
    def exitMacro_power(self, ctx:LEFParser.Macro_powerContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_origin.
    def enterMacro_origin(self, ctx:LEFParser.Macro_originContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_origin.
    def exitMacro_origin(self, ctx:LEFParser.Macro_originContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_foreign.
    def enterMacro_foreign(self, ctx:LEFParser.Macro_foreignContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_foreign.
    def exitMacro_foreign(self, ctx:LEFParser.Macro_foreignContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_fixedMask.
    def enterMacro_fixedMask(self, ctx:LEFParser.Macro_fixedMaskContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_fixedMask.
    def exitMacro_fixedMask(self, ctx:LEFParser.Macro_fixedMaskContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_eeq.
    def enterMacro_eeq(self, ctx:LEFParser.Macro_eeqContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_eeq.
    def exitMacro_eeq(self, ctx:LEFParser.Macro_eeqContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_leq.
    def enterMacro_leq(self, ctx:LEFParser.Macro_leqContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_leq.
    def exitMacro_leq(self, ctx:LEFParser.Macro_leqContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_site.
    def enterMacro_site(self, ctx:LEFParser.Macro_siteContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_site.
    def exitMacro_site(self, ctx:LEFParser.Macro_siteContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_site_word.
    def enterMacro_site_word(self, ctx:LEFParser.Macro_site_wordContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_site_word.
    def exitMacro_site_word(self, ctx:LEFParser.Macro_site_wordContext):
        pass


    # Enter a parse tree produced by LEFParser#site_word.
    def enterSite_word(self, ctx:LEFParser.Site_wordContext):
        pass

    # Exit a parse tree produced by LEFParser#site_word.
    def exitSite_word(self, ctx:LEFParser.Site_wordContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_size.
    def enterMacro_size(self, ctx:LEFParser.Macro_sizeContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_size.
    def exitMacro_size(self, ctx:LEFParser.Macro_sizeContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin.
    def enterMacro_pin(self, ctx:LEFParser.Macro_pinContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin.
    def exitMacro_pin(self, ctx:LEFParser.Macro_pinContext):
        pass


    # Enter a parse tree produced by LEFParser#start_macro_pin.
    def enterStart_macro_pin(self, ctx:LEFParser.Start_macro_pinContext):
        pass

    # Exit a parse tree produced by LEFParser#start_macro_pin.
    def exitStart_macro_pin(self, ctx:LEFParser.Start_macro_pinContext):
        pass


    # Enter a parse tree produced by LEFParser#end_macro_pin.
    def enterEnd_macro_pin(self, ctx:LEFParser.End_macro_pinContext):
        pass

    # Exit a parse tree produced by LEFParser#end_macro_pin.
    def exitEnd_macro_pin(self, ctx:LEFParser.End_macro_pinContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_options.
    def enterMacro_pin_options(self, ctx:LEFParser.Macro_pin_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_options.
    def exitMacro_pin_options(self, ctx:LEFParser.Macro_pin_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_option.
    def enterMacro_pin_option(self, ctx:LEFParser.Macro_pin_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_option.
    def exitMacro_pin_option(self, ctx:LEFParser.Macro_pin_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#pin_layer_oxide.
    def enterPin_layer_oxide(self, ctx:LEFParser.Pin_layer_oxideContext):
        pass

    # Exit a parse tree produced by LEFParser#pin_layer_oxide.
    def exitPin_layer_oxide(self, ctx:LEFParser.Pin_layer_oxideContext):
        pass


    # Enter a parse tree produced by LEFParser#pin_prop_list.
    def enterPin_prop_list(self, ctx:LEFParser.Pin_prop_listContext):
        pass

    # Exit a parse tree produced by LEFParser#pin_prop_list.
    def exitPin_prop_list(self, ctx:LEFParser.Pin_prop_listContext):
        pass


    # Enter a parse tree produced by LEFParser#pin_name_value_pair.
    def enterPin_name_value_pair(self, ctx:LEFParser.Pin_name_value_pairContext):
        pass

    # Exit a parse tree produced by LEFParser#pin_name_value_pair.
    def exitPin_name_value_pair(self, ctx:LEFParser.Pin_name_value_pairContext):
        pass


    # Enter a parse tree produced by LEFParser#electrical_direction.
    def enterElectrical_direction(self, ctx:LEFParser.Electrical_directionContext):
        pass

    # Exit a parse tree produced by LEFParser#electrical_direction.
    def exitElectrical_direction(self, ctx:LEFParser.Electrical_directionContext):
        pass


    # Enter a parse tree produced by LEFParser#start_macro_port.
    def enterStart_macro_port(self, ctx:LEFParser.Start_macro_portContext):
        pass

    # Exit a parse tree produced by LEFParser#start_macro_port.
    def exitStart_macro_port(self, ctx:LEFParser.Start_macro_portContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_port_class_option.
    def enterMacro_port_class_option(self, ctx:LEFParser.Macro_port_class_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_port_class_option.
    def exitMacro_port_class_option(self, ctx:LEFParser.Macro_port_class_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_use.
    def enterMacro_pin_use(self, ctx:LEFParser.Macro_pin_useContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_use.
    def exitMacro_pin_use(self, ctx:LEFParser.Macro_pin_useContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_scan_use.
    def enterMacro_scan_use(self, ctx:LEFParser.Macro_scan_useContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_scan_use.
    def exitMacro_scan_use(self, ctx:LEFParser.Macro_scan_useContext):
        pass


    # Enter a parse tree produced by LEFParser#pin_shape.
    def enterPin_shape(self, ctx:LEFParser.Pin_shapeContext):
        pass

    # Exit a parse tree produced by LEFParser#pin_shape.
    def exitPin_shape(self, ctx:LEFParser.Pin_shapeContext):
        pass


    # Enter a parse tree produced by LEFParser#geometries.
    def enterGeometries(self, ctx:LEFParser.GeometriesContext):
        pass

    # Exit a parse tree produced by LEFParser#geometries.
    def exitGeometries(self, ctx:LEFParser.GeometriesContext):
        pass


    # Enter a parse tree produced by LEFParser#geometry.
    def enterGeometry(self, ctx:LEFParser.GeometryContext):
        pass

    # Exit a parse tree produced by LEFParser#geometry.
    def exitGeometry(self, ctx:LEFParser.GeometryContext):
        pass


    # Enter a parse tree produced by LEFParser#geometry_options.
    def enterGeometry_options(self, ctx:LEFParser.Geometry_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#geometry_options.
    def exitGeometry_options(self, ctx:LEFParser.Geometry_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_exceptpgnet.
    def enterLayer_exceptpgnet(self, ctx:LEFParser.Layer_exceptpgnetContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_exceptpgnet.
    def exitLayer_exceptpgnet(self, ctx:LEFParser.Layer_exceptpgnetContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_spacing.
    def enterLayer_spacing(self, ctx:LEFParser.Layer_spacingContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_spacing.
    def exitLayer_spacing(self, ctx:LEFParser.Layer_spacingContext):
        pass


    # Enter a parse tree produced by LEFParser#firstPt.
    def enterFirstPt(self, ctx:LEFParser.FirstPtContext):
        pass

    # Exit a parse tree produced by LEFParser#firstPt.
    def exitFirstPt(self, ctx:LEFParser.FirstPtContext):
        pass


    # Enter a parse tree produced by LEFParser#nextPt.
    def enterNextPt(self, ctx:LEFParser.NextPtContext):
        pass

    # Exit a parse tree produced by LEFParser#nextPt.
    def exitNextPt(self, ctx:LEFParser.NextPtContext):
        pass


    # Enter a parse tree produced by LEFParser#otherPts.
    def enterOtherPts(self, ctx:LEFParser.OtherPtsContext):
        pass

    # Exit a parse tree produced by LEFParser#otherPts.
    def exitOtherPts(self, ctx:LEFParser.OtherPtsContext):
        pass


    # Enter a parse tree produced by LEFParser#via_placement.
    def enterVia_placement(self, ctx:LEFParser.Via_placementContext):
        pass

    # Exit a parse tree produced by LEFParser#via_placement.
    def exitVia_placement(self, ctx:LEFParser.Via_placementContext):
        pass


    # Enter a parse tree produced by LEFParser#stepPattern.
    def enterStepPattern(self, ctx:LEFParser.StepPatternContext):
        pass

    # Exit a parse tree produced by LEFParser#stepPattern.
    def exitStepPattern(self, ctx:LEFParser.StepPatternContext):
        pass


    # Enter a parse tree produced by LEFParser#sitePattern.
    def enterSitePattern(self, ctx:LEFParser.SitePatternContext):
        pass

    # Exit a parse tree produced by LEFParser#sitePattern.
    def exitSitePattern(self, ctx:LEFParser.SitePatternContext):
        pass


    # Enter a parse tree produced by LEFParser#trackPattern.
    def enterTrackPattern(self, ctx:LEFParser.TrackPatternContext):
        pass

    # Exit a parse tree produced by LEFParser#trackPattern.
    def exitTrackPattern(self, ctx:LEFParser.TrackPatternContext):
        pass


    # Enter a parse tree produced by LEFParser#trackLayers.
    def enterTrackLayers(self, ctx:LEFParser.TrackLayersContext):
        pass

    # Exit a parse tree produced by LEFParser#trackLayers.
    def exitTrackLayers(self, ctx:LEFParser.TrackLayersContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_name.
    def enterLayer_name(self, ctx:LEFParser.Layer_nameContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_name.
    def exitLayer_name(self, ctx:LEFParser.Layer_nameContext):
        pass


    # Enter a parse tree produced by LEFParser#gcellPattern.
    def enterGcellPattern(self, ctx:LEFParser.GcellPatternContext):
        pass

    # Exit a parse tree produced by LEFParser#gcellPattern.
    def exitGcellPattern(self, ctx:LEFParser.GcellPatternContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_obs.
    def enterMacro_obs(self, ctx:LEFParser.Macro_obsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_obs.
    def exitMacro_obs(self, ctx:LEFParser.Macro_obsContext):
        pass


    # Enter a parse tree produced by LEFParser#start_macro_obs.
    def enterStart_macro_obs(self, ctx:LEFParser.Start_macro_obsContext):
        pass

    # Exit a parse tree produced by LEFParser#start_macro_obs.
    def exitStart_macro_obs(self, ctx:LEFParser.Start_macro_obsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_density.
    def enterMacro_density(self, ctx:LEFParser.Macro_densityContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_density.
    def exitMacro_density(self, ctx:LEFParser.Macro_densityContext):
        pass


    # Enter a parse tree produced by LEFParser#density_layers.
    def enterDensity_layers(self, ctx:LEFParser.Density_layersContext):
        pass

    # Exit a parse tree produced by LEFParser#density_layers.
    def exitDensity_layers(self, ctx:LEFParser.Density_layersContext):
        pass


    # Enter a parse tree produced by LEFParser#density_layer.
    def enterDensity_layer(self, ctx:LEFParser.Density_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#density_layer.
    def exitDensity_layer(self, ctx:LEFParser.Density_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#density_layer_rects.
    def enterDensity_layer_rects(self, ctx:LEFParser.Density_layer_rectsContext):
        pass

    # Exit a parse tree produced by LEFParser#density_layer_rects.
    def exitDensity_layer_rects(self, ctx:LEFParser.Density_layer_rectsContext):
        pass


    # Enter a parse tree produced by LEFParser#density_layer_rect.
    def enterDensity_layer_rect(self, ctx:LEFParser.Density_layer_rectContext):
        pass

    # Exit a parse tree produced by LEFParser#density_layer_rect.
    def exitDensity_layer_rect(self, ctx:LEFParser.Density_layer_rectContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_clocktype.
    def enterMacro_clocktype(self, ctx:LEFParser.Macro_clocktypeContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_clocktype.
    def exitMacro_clocktype(self, ctx:LEFParser.Macro_clocktypeContext):
        pass


    # Enter a parse tree produced by LEFParser#timing.
    def enterTiming(self, ctx:LEFParser.TimingContext):
        pass

    # Exit a parse tree produced by LEFParser#timing.
    def exitTiming(self, ctx:LEFParser.TimingContext):
        pass


    # Enter a parse tree produced by LEFParser#start_timing.
    def enterStart_timing(self, ctx:LEFParser.Start_timingContext):
        pass

    # Exit a parse tree produced by LEFParser#start_timing.
    def exitStart_timing(self, ctx:LEFParser.Start_timingContext):
        pass


    # Enter a parse tree produced by LEFParser#end_timing.
    def enterEnd_timing(self, ctx:LEFParser.End_timingContext):
        pass

    # Exit a parse tree produced by LEFParser#end_timing.
    def exitEnd_timing(self, ctx:LEFParser.End_timingContext):
        pass


    # Enter a parse tree produced by LEFParser#timing_options.
    def enterTiming_options(self, ctx:LEFParser.Timing_optionsContext):
        pass

    # Exit a parse tree produced by LEFParser#timing_options.
    def exitTiming_options(self, ctx:LEFParser.Timing_optionsContext):
        pass


    # Enter a parse tree produced by LEFParser#timing_option.
    def enterTiming_option(self, ctx:LEFParser.Timing_optionContext):
        pass

    # Exit a parse tree produced by LEFParser#timing_option.
    def exitTiming_option(self, ctx:LEFParser.Timing_optionContext):
        pass


    # Enter a parse tree produced by LEFParser#one_pin_trigger.
    def enterOne_pin_trigger(self, ctx:LEFParser.One_pin_triggerContext):
        pass

    # Exit a parse tree produced by LEFParser#one_pin_trigger.
    def exitOne_pin_trigger(self, ctx:LEFParser.One_pin_triggerContext):
        pass


    # Enter a parse tree produced by LEFParser#two_pin_trigger.
    def enterTwo_pin_trigger(self, ctx:LEFParser.Two_pin_triggerContext):
        pass

    # Exit a parse tree produced by LEFParser#two_pin_trigger.
    def exitTwo_pin_trigger(self, ctx:LEFParser.Two_pin_triggerContext):
        pass


    # Enter a parse tree produced by LEFParser#from_pin_trigger.
    def enterFrom_pin_trigger(self, ctx:LEFParser.From_pin_triggerContext):
        pass

    # Exit a parse tree produced by LEFParser#from_pin_trigger.
    def exitFrom_pin_trigger(self, ctx:LEFParser.From_pin_triggerContext):
        pass


    # Enter a parse tree produced by LEFParser#to_pin_trigger.
    def enterTo_pin_trigger(self, ctx:LEFParser.To_pin_triggerContext):
        pass

    # Exit a parse tree produced by LEFParser#to_pin_trigger.
    def exitTo_pin_trigger(self, ctx:LEFParser.To_pin_triggerContext):
        pass


    # Enter a parse tree produced by LEFParser#delay_or_transition.
    def enterDelay_or_transition(self, ctx:LEFParser.Delay_or_transitionContext):
        pass

    # Exit a parse tree produced by LEFParser#delay_or_transition.
    def exitDelay_or_transition(self, ctx:LEFParser.Delay_or_transitionContext):
        pass


    # Enter a parse tree produced by LEFParser#list_of_table_entries.
    def enterList_of_table_entries(self, ctx:LEFParser.List_of_table_entriesContext):
        pass

    # Exit a parse tree produced by LEFParser#list_of_table_entries.
    def exitList_of_table_entries(self, ctx:LEFParser.List_of_table_entriesContext):
        pass


    # Enter a parse tree produced by LEFParser#table_entry.
    def enterTable_entry(self, ctx:LEFParser.Table_entryContext):
        pass

    # Exit a parse tree produced by LEFParser#table_entry.
    def exitTable_entry(self, ctx:LEFParser.Table_entryContext):
        pass


    # Enter a parse tree produced by LEFParser#list_of_table_axis_dnumbers.
    def enterList_of_table_axis_dnumbers(self, ctx:LEFParser.List_of_table_axis_dnumbersContext):
        pass

    # Exit a parse tree produced by LEFParser#list_of_table_axis_dnumbers.
    def exitList_of_table_axis_dnumbers(self, ctx:LEFParser.List_of_table_axis_dnumbersContext):
        pass


    # Enter a parse tree produced by LEFParser#slew_spec.
    def enterSlew_spec(self, ctx:LEFParser.Slew_specContext):
        pass

    # Exit a parse tree produced by LEFParser#slew_spec.
    def exitSlew_spec(self, ctx:LEFParser.Slew_specContext):
        pass


    # Enter a parse tree produced by LEFParser#risefall.
    def enterRisefall(self, ctx:LEFParser.RisefallContext):
        pass

    # Exit a parse tree produced by LEFParser#risefall.
    def exitRisefall(self, ctx:LEFParser.RisefallContext):
        pass


    # Enter a parse tree produced by LEFParser#unateness.
    def enterUnateness(self, ctx:LEFParser.UnatenessContext):
        pass

    # Exit a parse tree produced by LEFParser#unateness.
    def exitUnateness(self, ctx:LEFParser.UnatenessContext):
        pass


    # Enter a parse tree produced by LEFParser#list_of_from_strings.
    def enterList_of_from_strings(self, ctx:LEFParser.List_of_from_stringsContext):
        pass

    # Exit a parse tree produced by LEFParser#list_of_from_strings.
    def exitList_of_from_strings(self, ctx:LEFParser.List_of_from_stringsContext):
        pass


    # Enter a parse tree produced by LEFParser#list_of_to_strings.
    def enterList_of_to_strings(self, ctx:LEFParser.List_of_to_stringsContext):
        pass

    # Exit a parse tree produced by LEFParser#list_of_to_strings.
    def exitList_of_to_strings(self, ctx:LEFParser.List_of_to_stringsContext):
        pass


    # Enter a parse tree produced by LEFParser#array.
    def enterArray(self, ctx:LEFParser.ArrayContext):
        pass

    # Exit a parse tree produced by LEFParser#array.
    def exitArray(self, ctx:LEFParser.ArrayContext):
        pass


    # Enter a parse tree produced by LEFParser#start_array.
    def enterStart_array(self, ctx:LEFParser.Start_arrayContext):
        pass

    # Exit a parse tree produced by LEFParser#start_array.
    def exitStart_array(self, ctx:LEFParser.Start_arrayContext):
        pass


    # Enter a parse tree produced by LEFParser#end_array.
    def enterEnd_array(self, ctx:LEFParser.End_arrayContext):
        pass

    # Exit a parse tree produced by LEFParser#end_array.
    def exitEnd_array(self, ctx:LEFParser.End_arrayContext):
        pass


    # Enter a parse tree produced by LEFParser#array_rules.
    def enterArray_rules(self, ctx:LEFParser.Array_rulesContext):
        pass

    # Exit a parse tree produced by LEFParser#array_rules.
    def exitArray_rules(self, ctx:LEFParser.Array_rulesContext):
        pass


    # Enter a parse tree produced by LEFParser#array_rule.
    def enterArray_rule(self, ctx:LEFParser.Array_ruleContext):
        pass

    # Exit a parse tree produced by LEFParser#array_rule.
    def exitArray_rule(self, ctx:LEFParser.Array_ruleContext):
        pass


    # Enter a parse tree produced by LEFParser#floorplan_start.
    def enterFloorplan_start(self, ctx:LEFParser.Floorplan_startContext):
        pass

    # Exit a parse tree produced by LEFParser#floorplan_start.
    def exitFloorplan_start(self, ctx:LEFParser.Floorplan_startContext):
        pass


    # Enter a parse tree produced by LEFParser#floorplan_list.
    def enterFloorplan_list(self, ctx:LEFParser.Floorplan_listContext):
        pass

    # Exit a parse tree produced by LEFParser#floorplan_list.
    def exitFloorplan_list(self, ctx:LEFParser.Floorplan_listContext):
        pass


    # Enter a parse tree produced by LEFParser#floorplan_element.
    def enterFloorplan_element(self, ctx:LEFParser.Floorplan_elementContext):
        pass

    # Exit a parse tree produced by LEFParser#floorplan_element.
    def exitFloorplan_element(self, ctx:LEFParser.Floorplan_elementContext):
        pass


    # Enter a parse tree produced by LEFParser#cap_list.
    def enterCap_list(self, ctx:LEFParser.Cap_listContext):
        pass

    # Exit a parse tree produced by LEFParser#cap_list.
    def exitCap_list(self, ctx:LEFParser.Cap_listContext):
        pass


    # Enter a parse tree produced by LEFParser#one_cap.
    def enterOne_cap(self, ctx:LEFParser.One_capContext):
        pass

    # Exit a parse tree produced by LEFParser#one_cap.
    def exitOne_cap(self, ctx:LEFParser.One_capContext):
        pass


    # Enter a parse tree produced by LEFParser#msg_statement.
    def enterMsg_statement(self, ctx:LEFParser.Msg_statementContext):
        pass

    # Exit a parse tree produced by LEFParser#msg_statement.
    def exitMsg_statement(self, ctx:LEFParser.Msg_statementContext):
        pass


    # Enter a parse tree produced by LEFParser#create_file_statement.
    def enterCreate_file_statement(self, ctx:LEFParser.Create_file_statementContext):
        pass

    # Exit a parse tree produced by LEFParser#create_file_statement.
    def exitCreate_file_statement(self, ctx:LEFParser.Create_file_statementContext):
        pass


    # Enter a parse tree produced by LEFParser#def_statement.
    def enterDef_statement(self, ctx:LEFParser.Def_statementContext):
        pass

    # Exit a parse tree produced by LEFParser#def_statement.
    def exitDef_statement(self, ctx:LEFParser.Def_statementContext):
        pass


    # Enter a parse tree produced by LEFParser#expression.
    def enterExpression(self, ctx:LEFParser.ExpressionContext):
        pass

    # Exit a parse tree produced by LEFParser#expression.
    def exitExpression(self, ctx:LEFParser.ExpressionContext):
        pass


    # Enter a parse tree produced by LEFParser#b_expr.
    def enterB_expr(self, ctx:LEFParser.B_exprContext):
        pass

    # Exit a parse tree produced by LEFParser#b_expr.
    def exitB_expr(self, ctx:LEFParser.B_exprContext):
        pass


    # Enter a parse tree produced by LEFParser#s_expr.
    def enterS_expr(self, ctx:LEFParser.S_exprContext):
        pass

    # Exit a parse tree produced by LEFParser#s_expr.
    def exitS_expr(self, ctx:LEFParser.S_exprContext):
        pass


    # Enter a parse tree produced by LEFParser#relop.
    def enterRelop(self, ctx:LEFParser.RelopContext):
        pass

    # Exit a parse tree produced by LEFParser#relop.
    def exitRelop(self, ctx:LEFParser.RelopContext):
        pass


    # Enter a parse tree produced by LEFParser#prop_def_section.
    def enterProp_def_section(self, ctx:LEFParser.Prop_def_sectionContext):
        pass

    # Exit a parse tree produced by LEFParser#prop_def_section.
    def exitProp_def_section(self, ctx:LEFParser.Prop_def_sectionContext):
        pass


    # Enter a parse tree produced by LEFParser#prop_stmts.
    def enterProp_stmts(self, ctx:LEFParser.Prop_stmtsContext):
        pass

    # Exit a parse tree produced by LEFParser#prop_stmts.
    def exitProp_stmts(self, ctx:LEFParser.Prop_stmtsContext):
        pass


    # Enter a parse tree produced by LEFParser#prop_stmt.
    def enterProp_stmt(self, ctx:LEFParser.Prop_stmtContext):
        pass

    # Exit a parse tree produced by LEFParser#prop_stmt.
    def exitProp_stmt(self, ctx:LEFParser.Prop_stmtContext):
        pass


    # Enter a parse tree produced by LEFParser#prop_define.
    def enterProp_define(self, ctx:LEFParser.Prop_defineContext):
        pass

    # Exit a parse tree produced by LEFParser#prop_define.
    def exitProp_define(self, ctx:LEFParser.Prop_defineContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_range_second.
    def enterOpt_range_second(self, ctx:LEFParser.Opt_range_secondContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_range_second.
    def exitOpt_range_second(self, ctx:LEFParser.Opt_range_secondContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_endofline.
    def enterOpt_endofline(self, ctx:LEFParser.Opt_endoflineContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_endofline.
    def exitOpt_endofline(self, ctx:LEFParser.Opt_endoflineContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_endofline_twoedges.
    def enterOpt_endofline_twoedges(self, ctx:LEFParser.Opt_endofline_twoedgesContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_endofline_twoedges.
    def exitOpt_endofline_twoedges(self, ctx:LEFParser.Opt_endofline_twoedgesContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_samenetPGonly.
    def enterOpt_samenetPGonly(self, ctx:LEFParser.Opt_samenetPGonlyContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_samenetPGonly.
    def exitOpt_samenetPGonly(self, ctx:LEFParser.Opt_samenetPGonlyContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_def_range.
    def enterOpt_def_range(self, ctx:LEFParser.Opt_def_rangeContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_def_range.
    def exitOpt_def_range(self, ctx:LEFParser.Opt_def_rangeContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_def_value.
    def enterOpt_def_value(self, ctx:LEFParser.Opt_def_valueContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_def_value.
    def exitOpt_def_value(self, ctx:LEFParser.Opt_def_valueContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_def_dvalue.
    def enterOpt_def_dvalue(self, ctx:LEFParser.Opt_def_dvalueContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_def_dvalue.
    def exitOpt_def_dvalue(self, ctx:LEFParser.Opt_def_dvalueContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_spacing_opts.
    def enterLayer_spacing_opts(self, ctx:LEFParser.Layer_spacing_optsContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_spacing_opts.
    def exitLayer_spacing_opts(self, ctx:LEFParser.Layer_spacing_optsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_spacing_opt.
    def enterLayer_spacing_opt(self, ctx:LEFParser.Layer_spacing_optContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_spacing_opt.
    def exitLayer_spacing_opt(self, ctx:LEFParser.Layer_spacing_optContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_spacing_cut_routing.
    def enterLayer_spacing_cut_routing(self, ctx:LEFParser.Layer_spacing_cut_routingContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_spacing_cut_routing.
    def exitLayer_spacing_cut_routing(self, ctx:LEFParser.Layer_spacing_cut_routingContext):
        pass


    # Enter a parse tree produced by LEFParser#spacing_cut_layer_opt.
    def enterSpacing_cut_layer_opt(self, ctx:LEFParser.Spacing_cut_layer_optContext):
        pass

    # Exit a parse tree produced by LEFParser#spacing_cut_layer_opt.
    def exitSpacing_cut_layer_opt(self, ctx:LEFParser.Spacing_cut_layer_optContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_adjacentcuts_exceptsame.
    def enterOpt_adjacentcuts_exceptsame(self, ctx:LEFParser.Opt_adjacentcuts_exceptsameContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_adjacentcuts_exceptsame.
    def exitOpt_adjacentcuts_exceptsame(self, ctx:LEFParser.Opt_adjacentcuts_exceptsameContext):
        pass


    # Enter a parse tree produced by LEFParser#opt_layer_name.
    def enterOpt_layer_name(self, ctx:LEFParser.Opt_layer_nameContext):
        pass

    # Exit a parse tree produced by LEFParser#opt_layer_name.
    def exitOpt_layer_name(self, ctx:LEFParser.Opt_layer_nameContext):
        pass


    # Enter a parse tree produced by LEFParser#req_layer_name.
    def enterReq_layer_name(self, ctx:LEFParser.Req_layer_nameContext):
        pass

    # Exit a parse tree produced by LEFParser#req_layer_name.
    def exitReq_layer_name(self, ctx:LEFParser.Req_layer_nameContext):
        pass


    # Enter a parse tree produced by LEFParser#universalnoisemargin.
    def enterUniversalnoisemargin(self, ctx:LEFParser.UniversalnoisemarginContext):
        pass

    # Exit a parse tree produced by LEFParser#universalnoisemargin.
    def exitUniversalnoisemargin(self, ctx:LEFParser.UniversalnoisemarginContext):
        pass


    # Enter a parse tree produced by LEFParser#edgeratethreshold1.
    def enterEdgeratethreshold1(self, ctx:LEFParser.Edgeratethreshold1Context):
        pass

    # Exit a parse tree produced by LEFParser#edgeratethreshold1.
    def exitEdgeratethreshold1(self, ctx:LEFParser.Edgeratethreshold1Context):
        pass


    # Enter a parse tree produced by LEFParser#edgeratethreshold2.
    def enterEdgeratethreshold2(self, ctx:LEFParser.Edgeratethreshold2Context):
        pass

    # Exit a parse tree produced by LEFParser#edgeratethreshold2.
    def exitEdgeratethreshold2(self, ctx:LEFParser.Edgeratethreshold2Context):
        pass


    # Enter a parse tree produced by LEFParser#edgeratescalefactor.
    def enterEdgeratescalefactor(self, ctx:LEFParser.EdgeratescalefactorContext):
        pass

    # Exit a parse tree produced by LEFParser#edgeratescalefactor.
    def exitEdgeratescalefactor(self, ctx:LEFParser.EdgeratescalefactorContext):
        pass


    # Enter a parse tree produced by LEFParser#noisetable.
    def enterNoisetable(self, ctx:LEFParser.NoisetableContext):
        pass

    # Exit a parse tree produced by LEFParser#noisetable.
    def exitNoisetable(self, ctx:LEFParser.NoisetableContext):
        pass


    # Enter a parse tree produced by LEFParser#end_noisetable.
    def enterEnd_noisetable(self, ctx:LEFParser.End_noisetableContext):
        pass

    # Exit a parse tree produced by LEFParser#end_noisetable.
    def exitEnd_noisetable(self, ctx:LEFParser.End_noisetableContext):
        pass


    # Enter a parse tree produced by LEFParser#noise_table_list.
    def enterNoise_table_list(self, ctx:LEFParser.Noise_table_listContext):
        pass

    # Exit a parse tree produced by LEFParser#noise_table_list.
    def exitNoise_table_list(self, ctx:LEFParser.Noise_table_listContext):
        pass


    # Enter a parse tree produced by LEFParser#noise_table_entry.
    def enterNoise_table_entry(self, ctx:LEFParser.Noise_table_entryContext):
        pass

    # Exit a parse tree produced by LEFParser#noise_table_entry.
    def exitNoise_table_entry(self, ctx:LEFParser.Noise_table_entryContext):
        pass


    # Enter a parse tree produced by LEFParser#output_resistance_entry.
    def enterOutput_resistance_entry(self, ctx:LEFParser.Output_resistance_entryContext):
        pass

    # Exit a parse tree produced by LEFParser#output_resistance_entry.
    def exitOutput_resistance_entry(self, ctx:LEFParser.Output_resistance_entryContext):
        pass


    # Enter a parse tree produced by LEFParser#num_list.
    def enterNum_list(self, ctx:LEFParser.Num_listContext):
        pass

    # Exit a parse tree produced by LEFParser#num_list.
    def exitNum_list(self, ctx:LEFParser.Num_listContext):
        pass


    # Enter a parse tree produced by LEFParser#victim_list.
    def enterVictim_list(self, ctx:LEFParser.Victim_listContext):
        pass

    # Exit a parse tree produced by LEFParser#victim_list.
    def exitVictim_list(self, ctx:LEFParser.Victim_listContext):
        pass


    # Enter a parse tree produced by LEFParser#victim.
    def enterVictim(self, ctx:LEFParser.VictimContext):
        pass

    # Exit a parse tree produced by LEFParser#victim.
    def exitVictim(self, ctx:LEFParser.VictimContext):
        pass


    # Enter a parse tree produced by LEFParser#vnoiselist.
    def enterVnoiselist(self, ctx:LEFParser.VnoiselistContext):
        pass

    # Exit a parse tree produced by LEFParser#vnoiselist.
    def exitVnoiselist(self, ctx:LEFParser.VnoiselistContext):
        pass


    # Enter a parse tree produced by LEFParser#correctiontable.
    def enterCorrectiontable(self, ctx:LEFParser.CorrectiontableContext):
        pass

    # Exit a parse tree produced by LEFParser#correctiontable.
    def exitCorrectiontable(self, ctx:LEFParser.CorrectiontableContext):
        pass


    # Enter a parse tree produced by LEFParser#end_correctiontable.
    def enterEnd_correctiontable(self, ctx:LEFParser.End_correctiontableContext):
        pass

    # Exit a parse tree produced by LEFParser#end_correctiontable.
    def exitEnd_correctiontable(self, ctx:LEFParser.End_correctiontableContext):
        pass


    # Enter a parse tree produced by LEFParser#correction_table_list.
    def enterCorrection_table_list(self, ctx:LEFParser.Correction_table_listContext):
        pass

    # Exit a parse tree produced by LEFParser#correction_table_list.
    def exitCorrection_table_list(self, ctx:LEFParser.Correction_table_listContext):
        pass


    # Enter a parse tree produced by LEFParser#correction_table_item.
    def enterCorrection_table_item(self, ctx:LEFParser.Correction_table_itemContext):
        pass

    # Exit a parse tree produced by LEFParser#correction_table_item.
    def exitCorrection_table_item(self, ctx:LEFParser.Correction_table_itemContext):
        pass


    # Enter a parse tree produced by LEFParser#output_list.
    def enterOutput_list(self, ctx:LEFParser.Output_listContext):
        pass

    # Exit a parse tree produced by LEFParser#output_list.
    def exitOutput_list(self, ctx:LEFParser.Output_listContext):
        pass


    # Enter a parse tree produced by LEFParser#numo_list.
    def enterNumo_list(self, ctx:LEFParser.Numo_listContext):
        pass

    # Exit a parse tree produced by LEFParser#numo_list.
    def exitNumo_list(self, ctx:LEFParser.Numo_listContext):
        pass


    # Enter a parse tree produced by LEFParser#corr_victim_list.
    def enterCorr_victim_list(self, ctx:LEFParser.Corr_victim_listContext):
        pass

    # Exit a parse tree produced by LEFParser#corr_victim_list.
    def exitCorr_victim_list(self, ctx:LEFParser.Corr_victim_listContext):
        pass


    # Enter a parse tree produced by LEFParser#corr_victim.
    def enterCorr_victim(self, ctx:LEFParser.Corr_victimContext):
        pass

    # Exit a parse tree produced by LEFParser#corr_victim.
    def exitCorr_victim(self, ctx:LEFParser.Corr_victimContext):
        pass


    # Enter a parse tree produced by LEFParser#corr_list.
    def enterCorr_list(self, ctx:LEFParser.Corr_listContext):
        pass

    # Exit a parse tree produced by LEFParser#corr_list.
    def exitCorr_list(self, ctx:LEFParser.Corr_listContext):
        pass


    # Enter a parse tree produced by LEFParser#input_antenna.
    def enterInput_antenna(self, ctx:LEFParser.Input_antennaContext):
        pass

    # Exit a parse tree produced by LEFParser#input_antenna.
    def exitInput_antenna(self, ctx:LEFParser.Input_antennaContext):
        pass


    # Enter a parse tree produced by LEFParser#output_antenna.
    def enterOutput_antenna(self, ctx:LEFParser.Output_antennaContext):
        pass

    # Exit a parse tree produced by LEFParser#output_antenna.
    def exitOutput_antenna(self, ctx:LEFParser.Output_antennaContext):
        pass


    # Enter a parse tree produced by LEFParser#inout_antenna.
    def enterInout_antenna(self, ctx:LEFParser.Inout_antennaContext):
        pass

    # Exit a parse tree produced by LEFParser#inout_antenna.
    def exitInout_antenna(self, ctx:LEFParser.Inout_antennaContext):
        pass


    # Enter a parse tree produced by LEFParser#antenna_input.
    def enterAntenna_input(self, ctx:LEFParser.Antenna_inputContext):
        pass

    # Exit a parse tree produced by LEFParser#antenna_input.
    def exitAntenna_input(self, ctx:LEFParser.Antenna_inputContext):
        pass


    # Enter a parse tree produced by LEFParser#antenna_inout.
    def enterAntenna_inout(self, ctx:LEFParser.Antenna_inoutContext):
        pass

    # Exit a parse tree produced by LEFParser#antenna_inout.
    def exitAntenna_inout(self, ctx:LEFParser.Antenna_inoutContext):
        pass


    # Enter a parse tree produced by LEFParser#antenna_output.
    def enterAntenna_output(self, ctx:LEFParser.Antenna_outputContext):
        pass

    # Exit a parse tree produced by LEFParser#antenna_output.
    def exitAntenna_output(self, ctx:LEFParser.Antenna_outputContext):
        pass


