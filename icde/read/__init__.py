from antlr4 import *
from antlr4.tree.Trees import Trees
import sys

import logging
from .DEFParser import DEFParser
from .DEFLexer  import DEFLexer
from .DEFReader import DEFReader
from .LEFParser import LEFParser
from .LEFLexer  import LEFLexer
from .LEFReader import LEFReader
from .TLEFReader import TLEFReader

from pprint import pprint


def read_def(library,deffile):

    sys.setrecursionlimit(32000)

    deffs = FileStream(deffile)
    logging.info("Lexing DEF file")
    lexer = DEFLexer(deffs)
    stream = CommonTokenStream(lexer)
    logging.info("Parsing DEF file")
    parser = DEFParser(stream)
    tree = cProfile.run(parser.def_file())

    # pprint(Trees.toStringTree(tree, None, parser))    

    logging.info("Initializing DEF Data")
    DEF = DEFReader(library)
    walker = ParseTreeWalker()
    walker.walk(DEF, tree)

    del(tree)

    return DEF.design


def read_lef(library,leffile,technology=0):

    sys.setrecursionlimit(32000)

    logging.info("Reading LEF file " + leffile)

    leffs = FileStream(leffile)

    logging.info("Lexing LEF stream")
    lexer = LEFLexer(leffs)
    stream = CommonTokenStream(lexer)

    logging.info("Parsing LEF stream")
    parser = LEFParser(stream)
    tree = parser.lef_file()

    if technology :
        logging.info("Skip reading cell data from LEF file")
        LEF = TLEFReader(library)
    else:
        logging.info("Skip reading technology data from LEF file")
        LEF = LEFReader(library)

    logging.info("Initializing LEF data")

    walker = ParseTreeWalker()
    walker.walk(LEF, tree)

    del(tree)

