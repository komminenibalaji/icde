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

    def getPoints(self,ctx,points):

        for child in ctx.children:
            if (child.getChildCount() == 4):
                llx = int(child.getChild(1).getText() * self.scaling)
                lly = int(child.getChild(2).getText() * self.scaling)
                points.append((llx,lly))
            else:
                self.getPoints(child,points)

        return points


    def enterDesign(self, ctx:DEFParser.DesignContext):
        self.design = self.library.create_design(ctx.STRING().getText())

    def enterDiearea(self, ctx:DEFParser.DieareaContext):
        self.design.set_boundary(self.getPoints(ctx.children[1],[]))

    def enterPin(self, ctx:DEFParser.PinContext):
        self.port = self.design.create_port(ctx.children[1].getText(),None)

    def enterComponent(self, ctx:DEFParser.ComponentContext):
        self.cell = self.design.create_cell(ctx.STRING()[0].getText(),ctx.STRING()[1].getText())

    def enterComponent_property(self, ctx:DEFParser.Component_propertyContext):
        if ( ctx.getChild(0).getText() == "PLACED" ):
            llx = int(ctx.getChild(1).getChild(1).getText() * self.scaling)
            lly = int(ctx.getChild(1).getChild(2).getText() * self.scaling)
            self.cell.set_origin(llx,lly)

    def enterNet(self, ctx:DEFParser.NetContext):
        netname = ctx.children[1].getText()
        self.net = self.design.create_net(netname)

    def enterNet_pin(self, ctx:DEFParser.Net_pinContext):
        cellname = ctx.children[1].getText()
        pinname = ctx.children[2].getText()
        if ( cellname == "PIN" ):
            self.design.connect_port(pinname,self.net.name)
        else:
            self.design.connect_pin(cellname,pinname,self.net.name)


