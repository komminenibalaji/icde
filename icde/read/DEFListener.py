# Generated from DEF.g4 by ANTLR 4.5.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .DEFParser import DEFParser
else:
    from DEFParser import DEFParser

# This class defines a complete listener for a parse tree produced by DEFParser.
class DEFListener(ParseTreeListener):

    # Enter a parse tree produced by DEFParser#main.
    def enterMain(self, ctx:DEFParser.MainContext):
        pass

    # Exit a parse tree produced by DEFParser#main.
    def exitMain(self, ctx:DEFParser.MainContext):
        pass


    # Enter a parse tree produced by DEFParser#entities.
    def enterEntities(self, ctx:DEFParser.EntitiesContext):
        pass

    # Exit a parse tree produced by DEFParser#entities.
    def exitEntities(self, ctx:DEFParser.EntitiesContext):
        pass


    # Enter a parse tree produced by DEFParser#entity.
    def enterEntity(self, ctx:DEFParser.EntityContext):
        pass

    # Exit a parse tree produced by DEFParser#entity.
    def exitEntity(self, ctx:DEFParser.EntityContext):
        pass


    # Enter a parse tree produced by DEFParser#version.
    def enterVersion(self, ctx:DEFParser.VersionContext):
        pass

    # Exit a parse tree produced by DEFParser#version.
    def exitVersion(self, ctx:DEFParser.VersionContext):
        pass


    # Enter a parse tree produced by DEFParser#design.
    def enterDesign(self, ctx:DEFParser.DesignContext):
        pass

    # Exit a parse tree produced by DEFParser#design.
    def exitDesign(self, ctx:DEFParser.DesignContext):
        pass


    # Enter a parse tree produced by DEFParser#namescasesensitive.
    def enterNamescasesensitive(self, ctx:DEFParser.NamescasesensitiveContext):
        pass

    # Exit a parse tree produced by DEFParser#namescasesensitive.
    def exitNamescasesensitive(self, ctx:DEFParser.NamescasesensitiveContext):
        pass


    # Enter a parse tree produced by DEFParser#busbitchars.
    def enterBusbitchars(self, ctx:DEFParser.BusbitcharsContext):
        pass

    # Exit a parse tree produced by DEFParser#busbitchars.
    def exitBusbitchars(self, ctx:DEFParser.BusbitcharsContext):
        pass


    # Enter a parse tree produced by DEFParser#dividechar.
    def enterDividechar(self, ctx:DEFParser.DividecharContext):
        pass

    # Exit a parse tree produced by DEFParser#dividechar.
    def exitDividechar(self, ctx:DEFParser.DividecharContext):
        pass


    # Enter a parse tree produced by DEFParser#units.
    def enterUnits(self, ctx:DEFParser.UnitsContext):
        pass

    # Exit a parse tree produced by DEFParser#units.
    def exitUnits(self, ctx:DEFParser.UnitsContext):
        pass


    # Enter a parse tree produced by DEFParser#diearea.
    def enterDiearea(self, ctx:DEFParser.DieareaContext):
        pass

    # Exit a parse tree produced by DEFParser#diearea.
    def exitDiearea(self, ctx:DEFParser.DieareaContext):
        pass


    # Enter a parse tree produced by DEFParser#tracks.
    def enterTracks(self, ctx:DEFParser.TracksContext):
        pass

    # Exit a parse tree produced by DEFParser#tracks.
    def exitTracks(self, ctx:DEFParser.TracksContext):
        pass


    # Enter a parse tree produced by DEFParser#components_section.
    def enterComponents_section(self, ctx:DEFParser.Components_sectionContext):
        pass

    # Exit a parse tree produced by DEFParser#components_section.
    def exitComponents_section(self, ctx:DEFParser.Components_sectionContext):
        pass


    # Enter a parse tree produced by DEFParser#components.
    def enterComponents(self, ctx:DEFParser.ComponentsContext):
        pass

    # Exit a parse tree produced by DEFParser#components.
    def exitComponents(self, ctx:DEFParser.ComponentsContext):
        pass


    # Enter a parse tree produced by DEFParser#component.
    def enterComponent(self, ctx:DEFParser.ComponentContext):
        pass

    # Exit a parse tree produced by DEFParser#component.
    def exitComponent(self, ctx:DEFParser.ComponentContext):
        pass


    # Enter a parse tree produced by DEFParser#component_properties.
    def enterComponent_properties(self, ctx:DEFParser.Component_propertiesContext):
        pass

    # Exit a parse tree produced by DEFParser#component_properties.
    def exitComponent_properties(self, ctx:DEFParser.Component_propertiesContext):
        pass


    # Enter a parse tree produced by DEFParser#component_property.
    def enterComponent_property(self, ctx:DEFParser.Component_propertyContext):
        pass

    # Exit a parse tree produced by DEFParser#component_property.
    def exitComponent_property(self, ctx:DEFParser.Component_propertyContext):
        pass


    # Enter a parse tree produced by DEFParser#pins_section.
    def enterPins_section(self, ctx:DEFParser.Pins_sectionContext):
        pass

    # Exit a parse tree produced by DEFParser#pins_section.
    def exitPins_section(self, ctx:DEFParser.Pins_sectionContext):
        pass


    # Enter a parse tree produced by DEFParser#pins.
    def enterPins(self, ctx:DEFParser.PinsContext):
        pass

    # Exit a parse tree produced by DEFParser#pins.
    def exitPins(self, ctx:DEFParser.PinsContext):
        pass


    # Enter a parse tree produced by DEFParser#pin.
    def enterPin(self, ctx:DEFParser.PinContext):
        pass

    # Exit a parse tree produced by DEFParser#pin.
    def exitPin(self, ctx:DEFParser.PinContext):
        pass


    # Enter a parse tree produced by DEFParser#pin_properties.
    def enterPin_properties(self, ctx:DEFParser.Pin_propertiesContext):
        pass

    # Exit a parse tree produced by DEFParser#pin_properties.
    def exitPin_properties(self, ctx:DEFParser.Pin_propertiesContext):
        pass


    # Enter a parse tree produced by DEFParser#pin_property.
    def enterPin_property(self, ctx:DEFParser.Pin_propertyContext):
        pass

    # Exit a parse tree produced by DEFParser#pin_property.
    def exitPin_property(self, ctx:DEFParser.Pin_propertyContext):
        pass


    # Enter a parse tree produced by DEFParser#nets_section.
    def enterNets_section(self, ctx:DEFParser.Nets_sectionContext):
        pass

    # Exit a parse tree produced by DEFParser#nets_section.
    def exitNets_section(self, ctx:DEFParser.Nets_sectionContext):
        pass


    # Enter a parse tree produced by DEFParser#nets.
    def enterNets(self, ctx:DEFParser.NetsContext):
        pass

    # Exit a parse tree produced by DEFParser#nets.
    def exitNets(self, ctx:DEFParser.NetsContext):
        pass


    # Enter a parse tree produced by DEFParser#net.
    def enterNet(self, ctx:DEFParser.NetContext):
        pass

    # Exit a parse tree produced by DEFParser#net.
    def exitNet(self, ctx:DEFParser.NetContext):
        pass


    # Enter a parse tree produced by DEFParser#net_properties.
    def enterNet_properties(self, ctx:DEFParser.Net_propertiesContext):
        pass

    # Exit a parse tree produced by DEFParser#net_properties.
    def exitNet_properties(self, ctx:DEFParser.Net_propertiesContext):
        pass


    # Enter a parse tree produced by DEFParser#net_property.
    def enterNet_property(self, ctx:DEFParser.Net_propertyContext):
        pass

    # Exit a parse tree produced by DEFParser#net_property.
    def exitNet_property(self, ctx:DEFParser.Net_propertyContext):
        pass


    # Enter a parse tree produced by DEFParser#net_routes.
    def enterNet_routes(self, ctx:DEFParser.Net_routesContext):
        pass

    # Exit a parse tree produced by DEFParser#net_routes.
    def exitNet_routes(self, ctx:DEFParser.Net_routesContext):
        pass


    # Enter a parse tree produced by DEFParser#net_route_shapes.
    def enterNet_route_shapes(self, ctx:DEFParser.Net_route_shapesContext):
        pass

    # Exit a parse tree produced by DEFParser#net_route_shapes.
    def exitNet_route_shapes(self, ctx:DEFParser.Net_route_shapesContext):
        pass


    # Enter a parse tree produced by DEFParser#net_route_shape.
    def enterNet_route_shape(self, ctx:DEFParser.Net_route_shapeContext):
        pass

    # Exit a parse tree produced by DEFParser#net_route_shape.
    def exitNet_route_shape(self, ctx:DEFParser.Net_route_shapeContext):
        pass


    # Enter a parse tree produced by DEFParser#net_via.
    def enterNet_via(self, ctx:DEFParser.Net_viaContext):
        pass

    # Exit a parse tree produced by DEFParser#net_via.
    def exitNet_via(self, ctx:DEFParser.Net_viaContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnets_section.
    def enterSpecialnets_section(self, ctx:DEFParser.Specialnets_sectionContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnets_section.
    def exitSpecialnets_section(self, ctx:DEFParser.Specialnets_sectionContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnets.
    def enterSpecialnets(self, ctx:DEFParser.SpecialnetsContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnets.
    def exitSpecialnets(self, ctx:DEFParser.SpecialnetsContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnet.
    def enterSpecialnet(self, ctx:DEFParser.SpecialnetContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnet.
    def exitSpecialnet(self, ctx:DEFParser.SpecialnetContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnet_properties.
    def enterSpecialnet_properties(self, ctx:DEFParser.Specialnet_propertiesContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnet_properties.
    def exitSpecialnet_properties(self, ctx:DEFParser.Specialnet_propertiesContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnet_property.
    def enterSpecialnet_property(self, ctx:DEFParser.Specialnet_propertyContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnet_property.
    def exitSpecialnet_property(self, ctx:DEFParser.Specialnet_propertyContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnet_routes.
    def enterSpecialnet_routes(self, ctx:DEFParser.Specialnet_routesContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnet_routes.
    def exitSpecialnet_routes(self, ctx:DEFParser.Specialnet_routesContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnet_route.
    def enterSpecialnet_route(self, ctx:DEFParser.Specialnet_routeContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnet_route.
    def exitSpecialnet_route(self, ctx:DEFParser.Specialnet_routeContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnet_route_shapes.
    def enterSpecialnet_route_shapes(self, ctx:DEFParser.Specialnet_route_shapesContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnet_route_shapes.
    def exitSpecialnet_route_shapes(self, ctx:DEFParser.Specialnet_route_shapesContext):
        pass


    # Enter a parse tree produced by DEFParser#specialnet_route_shape.
    def enterSpecialnet_route_shape(self, ctx:DEFParser.Specialnet_route_shapeContext):
        pass

    # Exit a parse tree produced by DEFParser#specialnet_route_shape.
    def exitSpecialnet_route_shape(self, ctx:DEFParser.Specialnet_route_shapeContext):
        pass


    # Enter a parse tree produced by DEFParser#net_route_status.
    def enterNet_route_status(self, ctx:DEFParser.Net_route_statusContext):
        pass

    # Exit a parse tree produced by DEFParser#net_route_status.
    def exitNet_route_status(self, ctx:DEFParser.Net_route_statusContext):
        pass


    # Enter a parse tree produced by DEFParser#net_pins.
    def enterNet_pins(self, ctx:DEFParser.Net_pinsContext):
        pass

    # Exit a parse tree produced by DEFParser#net_pins.
    def exitNet_pins(self, ctx:DEFParser.Net_pinsContext):
        pass


    # Enter a parse tree produced by DEFParser#net_pin.
    def enterNet_pin(self, ctx:DEFParser.Net_pinContext):
        pass

    # Exit a parse tree produced by DEFParser#net_pin.
    def exitNet_pin(self, ctx:DEFParser.Net_pinContext):
        pass


    # Enter a parse tree produced by DEFParser#routing_points.
    def enterRouting_points(self, ctx:DEFParser.Routing_pointsContext):
        pass

    # Exit a parse tree produced by DEFParser#routing_points.
    def exitRouting_points(self, ctx:DEFParser.Routing_pointsContext):
        pass


    # Enter a parse tree produced by DEFParser#routing_point.
    def enterRouting_point(self, ctx:DEFParser.Routing_pointContext):
        pass

    # Exit a parse tree produced by DEFParser#routing_point.
    def exitRouting_point(self, ctx:DEFParser.Routing_pointContext):
        pass


    # Enter a parse tree produced by DEFParser#points.
    def enterPoints(self, ctx:DEFParser.PointsContext):
        pass

    # Exit a parse tree produced by DEFParser#points.
    def exitPoints(self, ctx:DEFParser.PointsContext):
        pass


    # Enter a parse tree produced by DEFParser#point.
    def enterPoint(self, ctx:DEFParser.PointContext):
        pass

    # Exit a parse tree produced by DEFParser#point.
    def exitPoint(self, ctx:DEFParser.PointContext):
        pass


    # Enter a parse tree produced by DEFParser#boolean.
    def enterBoolean(self, ctx:DEFParser.BooleanContext):
        pass

    # Exit a parse tree produced by DEFParser#boolean.
    def exitBoolean(self, ctx:DEFParser.BooleanContext):
        pass


