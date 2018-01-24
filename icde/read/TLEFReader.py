import sys
import pprint
import icde.core
from antlr4 import *
from .LEFParser import LEFParser
from .LEFListener import LEFListener

class TLEFReader(LEFListener) :

    def __init__(self,library):
        self.library = library
        self.technology = library.technology
        self.layer = None

    def enterLayer_name(self, ctx:LEFParser.Layer_nameContext):
        self.layer = self.technology.create_layer(ctx.children[1].getText())


