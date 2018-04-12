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
        self.scaling = 1000
        self.layer = None
        self.site = None

    def enterLayer_name(self, ctx:LEFParser.Layer_nameContext):
        self.layer = self.technology.create_layer(ctx.children[1].getText())
        print("Reading layer " + self.layer.name)

    def enterStart_site(self, ctx:LEFParser.Start_siteContext):
        self.site = self.technology.create_site(ctx.children[1].getText())
        print("Reading site definition " + self.site.name)

    def enterSite_size(self, ctx:LEFParser.Site_sizeContext):
        self.site.width = int(float(ctx.children[1].getText()) * self.scaling)
        self.site.height = int(float(ctx.children[3].getText()) * self.scaling)


