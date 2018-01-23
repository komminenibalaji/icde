from antlr4 import *
from antlr4.tree.Trees import Trees

import logging
from .DEFParser import DEFParser
from .DEFLexer  import DEFLexer
from .DEFReader import DEFReader
from .LEFParser import LEFParser
from .LEFLexer  import LEFLexer
from .LEFReader import LEFReader

from pprint import pprint


def read_def(library,deffile):

    deffs = FileStream(deffile)
    lexer = DEFLexer(deffs)
    stream = CommonTokenStream(lexer)
    parser = DEFParser(stream)
    tree = parser.main()

    # pprint(Trees.toStringTree(tree, None, parser))    

    DEF = DEFReader(library)
    walker = ParseTreeWalker()
    walker.walk(DEF, tree)

    return DEF.design


def read_lef(library,leffile):

    leffs = FileStream(leffile)
    lexer = LEFLexer(leffs)
    stream = CommonTokenStream(lexer)
    parser = LEFParser(stream)
    tree = parser.main()
 
    LEF = LEFReader(library)
    walker = ParseTreeWalker()
    walker.walk(LEF, tree)


