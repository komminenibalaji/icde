import sys
import os
import logging
import shapely

from .core import Library
from .core import Design

from .read import read_def as _read_def 
from .read import read_lef as _read_lef

from .gui import LayoutWindow

__CURRENT_LIBRARY__ = None
__CURRENT_DESIGN__ = None
__CURRENT_WINDOW__ = None
__LAYOUT_WINDOWS__ = []

def create_library(libname,techfile):
    global __CURRENT_LIBRARY__
    __CURRENT_LIBRARY__ = Library(libname)
    _read_lef(__CURRENT_LIBRARY__,techfile,technology=1)
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
    global __CURRENT_DESIGN__
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


def start_gui():

    global __CURRENT_WINDOW__
    global __LAYOUT_WINDOW__

    logging.info("Starting ICDE GUI")

    __CURRENT_WINDOW__ = LayoutWindow(__CURRENT_LIBRARY__,__CURRENT_DESIGN__)
    __LAYOUT_WINDOWS__.append(__CURRENT_WINDOW__)
    

def stop_gui():

    global __LAYOUT_WINDOWS__

    logging.info("Stopping ICDE GUI")
    for lw in __LAYOUT_WINDOWS__:
        lw.destroy()

    __LAYOUT_WINDOWS__ = []

def show_congestion_map(filename):
    global __CURRENT_WINDOW__
    __CURRENT_WINDOW__.layout.show_congestion_map(filename)

def hide_congestion_map():
    global __CURRENT_WINDOW__
    __CURRENT_WINDOW__.layout.hide_congestion_map()

def source(filename):

    exec(open(filename).read())

