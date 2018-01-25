import sys
import pprint
import icde.core
from antlr4 import *
from .VerilogParser import VerilogParser
from .VerilogListener import VerilogListener

class VerilogReader(VerilogListener) :

    def __init__(self,library):
        self.library = library
        self.design = None
        self.port = None

