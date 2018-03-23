import sys
import pprint
import icde.core
from antlr4 import *
from .LEFParser import LEFParser
from .LEFListener import LEFListener

class LEFReader(LEFListener) :

    def __init__(self,library):
        self.library = library
        self.design = None
        self.scaling = 1000
        self.portname = None

    def enterStart_macro(self, ctx:LEFParser.Start_macroContext):
        self.design = self.library.create_design(ctx.children[1].getText()) 

    def enterMacro_size(self, ctx:LEFParser.Macro_sizeContext):
        width = int(float(ctx.children[1].getText()) * self.scaling)
        height = int(float(ctx.children[3].getText()) * self.scaling)
        self.design.set_boundary([(0,0),(width,height)])

    def enterStart_macro_pin(self, ctx:LEFParser.Start_macro_pinContext):
        self.portname = ctx.children[1].getText()

    def enterElectrical_direction(self, ctx:LEFParser.Electrical_directionContext):
        self.port = self.design.create_port(self.portname,ctx.children[1].getText())



