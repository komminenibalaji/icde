import sys
from antlr4 import *
from .DEFParser import DEFParser
from .DEFListener import DEFListener
from pprint import pprint

class DEFReader(DEFListener) :

    def __init__(self,library):
        self.library = library
        self.design = None
        self.cell = None
        self.port = None
        self.net = None
        self.scaling = 1
        self.points = []

    def enterPt(self,ctx:DEFParser.PtContext):
        self.points.append((int(ctx.children[1].getText()),int(ctx.children[2].getText())))

    def enterDesign_name(self, ctx:DEFParser.Design_nameContext):
        self.design = self.library.create_design(ctx.T_STRING().getText())

    def enterDie_area(self, ctx:DEFParser.Die_areaContext):
        self.points = []

    def exitDie_area(self, ctx:DEFParser.Die_areaContext):
        self.design.set_boundary(self.points)

    def enterPin(self, ctx:DEFParser.PinContext):
        self.port = self.design.create_port(ctx.children[1].getText(),None)

    def enterPin_option(self, ctx:DEFParser.Pin_optionContext):
        if ( self.port != None and 
             ctx.getChild(0).getChild(1) is not None and 
             (ctx.getChild(0).getChild(1).getText() == "PLACED" or 
             ctx.getChild(0).getChild(1).getText() == "FIXED")):
            llx = int(ctx.getChild(1).getChild(1).getText() * self.scaling)
            lly = int(ctx.getChild(1).getChild(2).getText() * self.scaling)
            self.port.set_origin(llx,lly)

    def enterComp_id_and_name(self, ctx:DEFParser.Comp_id_and_nameContext):
        self.cell = self.design.create_cell(ctx.T_STRING()[0].getText(),ctx.T_STRING()[1].getText())

    def enterComp_type(self, ctx:DEFParser.Comp_typeContext):
        if ( self.cell != None and ctx.getChild(0).getText() != "UNPLACED" ):
            llx = int(ctx.getChild(1).getChild(1).getText() * self.scaling)
            lly = int(ctx.getChild(1).getChild(2).getText() * self.scaling)
            self.cell.set_origin(llx,lly)

    def enterNet_name(self, ctx:DEFParser.Net_nameContext):
        if ( ctx.getChild(0).getText() != "MUST_JOIN" ):
            self.net = self.design.create_net(ctx.children[0].getText())

    def enterNet_connection(self, ctx:DEFParser.Net_connectionContext):
        cellname = ctx.children[1].getText()
        pinname = ctx.children[2].getText()
        if ( cellname == "PIN" ):
            self.design.connect_port(pinname,self.net.name)
        elif( cellname != "*" ):
            self.design.connect_pin(cellname,pinname,self.net.name)


