import sys
import os
import logging

from .core import Library
from .core import Design

from .read import read_def as _read_def 
from .read import read_lef as _read_lef

__CURRENT_LIBRARY__ = None
__CURRENT_DESIGN__ = None

def create_library(libname,techfile):
    global __CURRENT_LIBRARY__
    __CURRENT_LIBRARY__ = core.Library(libname,techfile)
    return __CURRENT_LIBRARY__

def current_library():
    if not ( __CURRENT_LIBRARY__ is None ):
        return __CURRENT_LIBRARY__
    else:
        logging.error("Current library is not defined")

def create_design(design_name):
    global __CURRENT_DESIGN__
    if not ( __CURRENT_LIBRARY__ is None ):
        __CURRENT_DESIGN__ = __CURRENT_LIBRARY__.create_design(design_name)
    else:
        logging.error("Current library is not defined")

def current_design():
    if not ( __CURRENT_DESIGN__ is None ):
        return __CURRENT_DESIGN__
    else:
        logging.error("Current design is not defined")

def create_port(portname,direction):
    if not ( __CURRENT_DESIGN__ is None ):
        __CURRENT_DESIGN__.create_port(portname,direction)
    else:
        logging.error("Current design is not defined")

def create_cell(cellname,refname):
    if not ( __CURRENT_DESIGN__ is None ):
        __CURRENT_DESIGN__.create_cell(cellname,refname)
    else:
        logging.error("Current design is not defined")

def create_net(netname):
    if not ( __CURRENT_DESIGN__ is None ):
        __CURRENT_DESIGN__.create_net(netname)
    else:
        logging.error("Current design is not defined")

def read_lef(leffile):
    if not ( __CURRENT_LIBRARY__ is None ):
        _read_lef(__CURRENT_LIBRARY__,leffile)
    else:
        logging.error("Current library is not defined")

def read_def(deffile):
    global __CURRENT_DESIGN__
    if ( __CURRENT_LIBRARY__ is None ):
        logging.error("Current library is not defined")
    else:
        __CURRENT_DESIGN__ = _read_def(__CURRENT_LIBRARY__,deffile)


