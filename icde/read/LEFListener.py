# Generated from LEF.g4 by ANTLR 4.5.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .LEFParser import LEFParser
else:
    from LEFParser import LEFParser

# This class defines a complete listener for a parse tree produced by LEFParser.
class LEFListener(ParseTreeListener):

    # Enter a parse tree produced by LEFParser#main.
    def enterMain(self, ctx:LEFParser.MainContext):
        pass

    # Exit a parse tree produced by LEFParser#main.
    def exitMain(self, ctx:LEFParser.MainContext):
        pass


    # Enter a parse tree produced by LEFParser#entities.
    def enterEntities(self, ctx:LEFParser.EntitiesContext):
        pass

    # Exit a parse tree produced by LEFParser#entities.
    def exitEntities(self, ctx:LEFParser.EntitiesContext):
        pass


    # Enter a parse tree produced by LEFParser#entity.
    def enterEntity(self, ctx:LEFParser.EntityContext):
        pass

    # Exit a parse tree produced by LEFParser#entity.
    def exitEntity(self, ctx:LEFParser.EntityContext):
        pass


    # Enter a parse tree produced by LEFParser#version.
    def enterVersion(self, ctx:LEFParser.VersionContext):
        pass

    # Exit a parse tree produced by LEFParser#version.
    def exitVersion(self, ctx:LEFParser.VersionContext):
        pass


    # Enter a parse tree produced by LEFParser#namescasesensitive.
    def enterNamescasesensitive(self, ctx:LEFParser.NamescasesensitiveContext):
        pass

    # Exit a parse tree produced by LEFParser#namescasesensitive.
    def exitNamescasesensitive(self, ctx:LEFParser.NamescasesensitiveContext):
        pass


    # Enter a parse tree produced by LEFParser#busbitchars.
    def enterBusbitchars(self, ctx:LEFParser.BusbitcharsContext):
        pass

    # Exit a parse tree produced by LEFParser#busbitchars.
    def exitBusbitchars(self, ctx:LEFParser.BusbitcharsContext):
        pass


    # Enter a parse tree produced by LEFParser#dividechar.
    def enterDividechar(self, ctx:LEFParser.DividecharContext):
        pass

    # Exit a parse tree produced by LEFParser#dividechar.
    def exitDividechar(self, ctx:LEFParser.DividecharContext):
        pass


    # Enter a parse tree produced by LEFParser#manufacturinggrid.
    def enterManufacturinggrid(self, ctx:LEFParser.ManufacturinggridContext):
        pass

    # Exit a parse tree produced by LEFParser#manufacturinggrid.
    def exitManufacturinggrid(self, ctx:LEFParser.ManufacturinggridContext):
        pass


    # Enter a parse tree produced by LEFParser#propertydefinitions.
    def enterPropertydefinitions(self, ctx:LEFParser.PropertydefinitionsContext):
        pass

    # Exit a parse tree produced by LEFParser#propertydefinitions.
    def exitPropertydefinitions(self, ctx:LEFParser.PropertydefinitionsContext):
        pass


    # Enter a parse tree produced by LEFParser#useminspacing.
    def enterUseminspacing(self, ctx:LEFParser.UseminspacingContext):
        pass

    # Exit a parse tree produced by LEFParser#useminspacing.
    def exitUseminspacing(self, ctx:LEFParser.UseminspacingContext):
        pass


    # Enter a parse tree produced by LEFParser#spacing.
    def enterSpacing(self, ctx:LEFParser.SpacingContext):
        pass

    # Exit a parse tree produced by LEFParser#spacing.
    def exitSpacing(self, ctx:LEFParser.SpacingContext):
        pass


    # Enter a parse tree produced by LEFParser#spacingrules.
    def enterSpacingrules(self, ctx:LEFParser.SpacingrulesContext):
        pass

    # Exit a parse tree produced by LEFParser#spacingrules.
    def exitSpacingrules(self, ctx:LEFParser.SpacingrulesContext):
        pass


    # Enter a parse tree produced by LEFParser#spacingrule.
    def enterSpacingrule(self, ctx:LEFParser.SpacingruleContext):
        pass

    # Exit a parse tree produced by LEFParser#spacingrule.
    def exitSpacingrule(self, ctx:LEFParser.SpacingruleContext):
        pass


    # Enter a parse tree produced by LEFParser#clearancemeasure.
    def enterClearancemeasure(self, ctx:LEFParser.ClearancemeasureContext):
        pass

    # Exit a parse tree produced by LEFParser#clearancemeasure.
    def exitClearancemeasure(self, ctx:LEFParser.ClearancemeasureContext):
        pass


    # Enter a parse tree produced by LEFParser#units.
    def enterUnits(self, ctx:LEFParser.UnitsContext):
        pass

    # Exit a parse tree produced by LEFParser#units.
    def exitUnits(self, ctx:LEFParser.UnitsContext):
        pass


    # Enter a parse tree produced by LEFParser#scalers.
    def enterScalers(self, ctx:LEFParser.ScalersContext):
        pass

    # Exit a parse tree produced by LEFParser#scalers.
    def exitScalers(self, ctx:LEFParser.ScalersContext):
        pass


    # Enter a parse tree produced by LEFParser#scaler.
    def enterScaler(self, ctx:LEFParser.ScalerContext):
        pass

    # Exit a parse tree produced by LEFParser#scaler.
    def exitScaler(self, ctx:LEFParser.ScalerContext):
        pass


    # Enter a parse tree produced by LEFParser#layer.
    def enterLayer(self, ctx:LEFParser.LayerContext):
        pass

    # Exit a parse tree produced by LEFParser#layer.
    def exitLayer(self, ctx:LEFParser.LayerContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_masterslice.
    def enterLayer_masterslice(self, ctx:LEFParser.Layer_mastersliceContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_masterslice.
    def exitLayer_masterslice(self, ctx:LEFParser.Layer_mastersliceContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_overlap.
    def enterLayer_overlap(self, ctx:LEFParser.Layer_overlapContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_overlap.
    def exitLayer_overlap(self, ctx:LEFParser.Layer_overlapContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_name.
    def enterLayer_name(self, ctx:LEFParser.Layer_nameContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_name.
    def exitLayer_name(self, ctx:LEFParser.Layer_nameContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_end.
    def enterLayer_end(self, ctx:LEFParser.Layer_endContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_end.
    def exitLayer_end(self, ctx:LEFParser.Layer_endContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_cut.
    def enterLayer_cut(self, ctx:LEFParser.Layer_cutContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_cut.
    def exitLayer_cut(self, ctx:LEFParser.Layer_cutContext):
        pass


    # Enter a parse tree produced by LEFParser#cut_layer_settings.
    def enterCut_layer_settings(self, ctx:LEFParser.Cut_layer_settingsContext):
        pass

    # Exit a parse tree produced by LEFParser#cut_layer_settings.
    def exitCut_layer_settings(self, ctx:LEFParser.Cut_layer_settingsContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_routing.
    def enterLayer_routing(self, ctx:LEFParser.Layer_routingContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_routing.
    def exitLayer_routing(self, ctx:LEFParser.Layer_routingContext):
        pass


    # Enter a parse tree produced by LEFParser#routing_layer_settings.
    def enterRouting_layer_settings(self, ctx:LEFParser.Routing_layer_settingsContext):
        pass

    # Exit a parse tree produced by LEFParser#routing_layer_settings.
    def exitRouting_layer_settings(self, ctx:LEFParser.Routing_layer_settingsContext):
        pass


    # Enter a parse tree produced by LEFParser#routing_layer_setting.
    def enterRouting_layer_setting(self, ctx:LEFParser.Routing_layer_settingContext):
        pass

    # Exit a parse tree produced by LEFParser#routing_layer_setting.
    def exitRouting_layer_setting(self, ctx:LEFParser.Routing_layer_settingContext):
        pass


    # Enter a parse tree produced by LEFParser#via.
    def enterVia(self, ctx:LEFParser.ViaContext):
        pass

    # Exit a parse tree produced by LEFParser#via.
    def exitVia(self, ctx:LEFParser.ViaContext):
        pass


    # Enter a parse tree produced by LEFParser#via_layers.
    def enterVia_layers(self, ctx:LEFParser.Via_layersContext):
        pass

    # Exit a parse tree produced by LEFParser#via_layers.
    def exitVia_layers(self, ctx:LEFParser.Via_layersContext):
        pass


    # Enter a parse tree produced by LEFParser#via_layer.
    def enterVia_layer(self, ctx:LEFParser.Via_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#via_layer.
    def exitVia_layer(self, ctx:LEFParser.Via_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule.
    def enterViarule(self, ctx:LEFParser.ViaruleContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule.
    def exitViarule(self, ctx:LEFParser.ViaruleContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layers.
    def enterViarule_layers(self, ctx:LEFParser.Viarule_layersContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layers.
    def exitViarule_layers(self, ctx:LEFParser.Viarule_layersContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer.
    def enterViarule_layer(self, ctx:LEFParser.Viarule_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer.
    def exitViarule_layer(self, ctx:LEFParser.Viarule_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer_settings.
    def enterViarule_layer_settings(self, ctx:LEFParser.Viarule_layer_settingsContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer_settings.
    def exitViarule_layer_settings(self, ctx:LEFParser.Viarule_layer_settingsContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_layer_setting.
    def enterViarule_layer_setting(self, ctx:LEFParser.Viarule_layer_settingContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_layer_setting.
    def exitViarule_layer_setting(self, ctx:LEFParser.Viarule_layer_settingContext):
        pass


    # Enter a parse tree produced by LEFParser#viarule_cut.
    def enterViarule_cut(self, ctx:LEFParser.Viarule_cutContext):
        pass

    # Exit a parse tree produced by LEFParser#viarule_cut.
    def exitViarule_cut(self, ctx:LEFParser.Viarule_cutContext):
        pass


    # Enter a parse tree produced by LEFParser#cut_layer_geometry.
    def enterCut_layer_geometry(self, ctx:LEFParser.Cut_layer_geometryContext):
        pass

    # Exit a parse tree produced by LEFParser#cut_layer_geometry.
    def exitCut_layer_geometry(self, ctx:LEFParser.Cut_layer_geometryContext):
        pass


    # Enter a parse tree produced by LEFParser#site.
    def enterSite(self, ctx:LEFParser.SiteContext):
        pass

    # Exit a parse tree produced by LEFParser#site.
    def exitSite(self, ctx:LEFParser.SiteContext):
        pass


    # Enter a parse tree produced by LEFParser#site_settings.
    def enterSite_settings(self, ctx:LEFParser.Site_settingsContext):
        pass

    # Exit a parse tree produced by LEFParser#site_settings.
    def exitSite_settings(self, ctx:LEFParser.Site_settingsContext):
        pass


    # Enter a parse tree produced by LEFParser#site_setting.
    def enterSite_setting(self, ctx:LEFParser.Site_settingContext):
        pass

    # Exit a parse tree produced by LEFParser#site_setting.
    def exitSite_setting(self, ctx:LEFParser.Site_settingContext):
        pass


    # Enter a parse tree produced by LEFParser#macro.
    def enterMacro(self, ctx:LEFParser.MacroContext):
        pass

    # Exit a parse tree produced by LEFParser#macro.
    def exitMacro(self, ctx:LEFParser.MacroContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_elements.
    def enterMacro_elements(self, ctx:LEFParser.Macro_elementsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_elements.
    def exitMacro_elements(self, ctx:LEFParser.Macro_elementsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_element.
    def enterMacro_element(self, ctx:LEFParser.Macro_elementContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_element.
    def exitMacro_element(self, ctx:LEFParser.Macro_elementContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_settings.
    def enterMacro_settings(self, ctx:LEFParser.Macro_settingsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_settings.
    def exitMacro_settings(self, ctx:LEFParser.Macro_settingsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_setting.
    def enterMacro_setting(self, ctx:LEFParser.Macro_settingContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_setting.
    def exitMacro_setting(self, ctx:LEFParser.Macro_settingContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_obs.
    def enterMacro_obs(self, ctx:LEFParser.Macro_obsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_obs.
    def exitMacro_obs(self, ctx:LEFParser.Macro_obsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_obs_layers.
    def enterMacro_obs_layers(self, ctx:LEFParser.Macro_obs_layersContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_obs_layers.
    def exitMacro_obs_layers(self, ctx:LEFParser.Macro_obs_layersContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_obs_layer.
    def enterMacro_obs_layer(self, ctx:LEFParser.Macro_obs_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_obs_layer.
    def exitMacro_obs_layer(self, ctx:LEFParser.Macro_obs_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#obs_layer_geometries.
    def enterObs_layer_geometries(self, ctx:LEFParser.Obs_layer_geometriesContext):
        pass

    # Exit a parse tree produced by LEFParser#obs_layer_geometries.
    def exitObs_layer_geometries(self, ctx:LEFParser.Obs_layer_geometriesContext):
        pass


    # Enter a parse tree produced by LEFParser#obs_layer_geometry.
    def enterObs_layer_geometry(self, ctx:LEFParser.Obs_layer_geometryContext):
        pass

    # Exit a parse tree produced by LEFParser#obs_layer_geometry.
    def exitObs_layer_geometry(self, ctx:LEFParser.Obs_layer_geometryContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pins.
    def enterMacro_pins(self, ctx:LEFParser.Macro_pinsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pins.
    def exitMacro_pins(self, ctx:LEFParser.Macro_pinsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin.
    def enterMacro_pin(self, ctx:LEFParser.Macro_pinContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin.
    def exitMacro_pin(self, ctx:LEFParser.Macro_pinContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_settings.
    def enterMacro_pin_settings(self, ctx:LEFParser.Macro_pin_settingsContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_settings.
    def exitMacro_pin_settings(self, ctx:LEFParser.Macro_pin_settingsContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_setting.
    def enterMacro_pin_setting(self, ctx:LEFParser.Macro_pin_settingContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_setting.
    def exitMacro_pin_setting(self, ctx:LEFParser.Macro_pin_settingContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_direction.
    def enterMacro_pin_direction(self, ctx:LEFParser.Macro_pin_directionContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_direction.
    def exitMacro_pin_direction(self, ctx:LEFParser.Macro_pin_directionContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_port.
    def enterMacro_pin_port(self, ctx:LEFParser.Macro_pin_portContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_port.
    def exitMacro_pin_port(self, ctx:LEFParser.Macro_pin_portContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_port_layers.
    def enterMacro_pin_port_layers(self, ctx:LEFParser.Macro_pin_port_layersContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_port_layers.
    def exitMacro_pin_port_layers(self, ctx:LEFParser.Macro_pin_port_layersContext):
        pass


    # Enter a parse tree produced by LEFParser#macro_pin_port_layer.
    def enterMacro_pin_port_layer(self, ctx:LEFParser.Macro_pin_port_layerContext):
        pass

    # Exit a parse tree produced by LEFParser#macro_pin_port_layer.
    def exitMacro_pin_port_layer(self, ctx:LEFParser.Macro_pin_port_layerContext):
        pass


    # Enter a parse tree produced by LEFParser#port_layer_geometries.
    def enterPort_layer_geometries(self, ctx:LEFParser.Port_layer_geometriesContext):
        pass

    # Exit a parse tree produced by LEFParser#port_layer_geometries.
    def exitPort_layer_geometries(self, ctx:LEFParser.Port_layer_geometriesContext):
        pass


    # Enter a parse tree produced by LEFParser#port_layer_geometry.
    def enterPort_layer_geometry(self, ctx:LEFParser.Port_layer_geometryContext):
        pass

    # Exit a parse tree produced by LEFParser#port_layer_geometry.
    def exitPort_layer_geometry(self, ctx:LEFParser.Port_layer_geometryContext):
        pass


    # Enter a parse tree produced by LEFParser#layer_direction.
    def enterLayer_direction(self, ctx:LEFParser.Layer_directionContext):
        pass

    # Exit a parse tree produced by LEFParser#layer_direction.
    def exitLayer_direction(self, ctx:LEFParser.Layer_directionContext):
        pass


    # Enter a parse tree produced by LEFParser#boolean.
    def enterBoolean(self, ctx:LEFParser.BooleanContext):
        pass

    # Exit a parse tree produced by LEFParser#boolean.
    def exitBoolean(self, ctx:LEFParser.BooleanContext):
        pass


