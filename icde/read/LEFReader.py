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

    def enterMacro(self, ctx:LEFParser.MacroContext):
        self.design = self.library.create_design(ctx.STRING()[1].getText()) 

    def enterMacro_setting(self, ctx:LEFParser.Macro_settingContext):
        if ( ctx.getChild(0).getText() == "SIZE" ):
            width = int(float(ctx.NUMBER()[0].getText()) * self.scaling)
            height = int(float(ctx.NUMBER()[1].getText()) * self.scaling)
            self.design.set_boundary([(0,0),(width,height)])

    def enterMacro_pin(self, ctx:LEFParser.Macro_pinContext):
        self.portname = ctx.children[1].getText()


    def enterMacro_pin_setting(self, ctx:LEFParser.Macro_pin_settingContext):
        if ( ctx.children[0].getText() == "DIRECTION" ):
            self.port = self.design.create_port(self.portname,ctx.children[1].getText())



