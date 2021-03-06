#!/usr/bin/python3

import logging
import shapely
import shapely.geometry

class Net:
    def __init__(self,netname):
        self.name = netname;
        self.pins = []
        self.ports = []

class Pin:
    def __init__(self,pinname,cell):
        logging.debug("Creating pin " + pinname + " for cell " + cell.name)
        self.name = pinname
        self.cell = cell

class Cell:
    def __init__(self,cellname,master):
        logging.debug("Creating cell " + cellname + " of type " + master.name)
        self.name = cellname
        self.master = master
        self.origin = shapely.geometry.Point(0,0)

    def set_origin(self,llx,lly):
        logging.debug("Setting cell " + self.name + " origin to (" + str(llx) + "," + str(lly) + ")")
        self.origin = shapely.geometry.Point(llx,lly)

class Port:
    def __init__(self,portname,direction):
        logging.debug("Creating port " + portname + " with direction " + str(direction))
        self.name = portname
        self.direction = direction
        self.shapes = []
        self.origin = shapely.geometry.Point(0,0)

    def set_origin(self,llx,lly):
        logging.debug("Setting port " + self.name + " origin to (" + str(llx) + "," + str(lly) + ")")
        self.origin = shapely.geometry.Point(llx,lly)


class Shape:
    def __init__(self,owner,layername,purpose,llx,lly,urx,ury):
        self.owner = owner
        self.layer = get_layers(layername)
        self.bbox = Polygon(shapely.geometry.box(llx,lly,urx,ury))
        self.purpose = purpose
        self.name = self.layer + "_" + self.purpose + "_" + str(bbox)

class Design:
    def __init__(self,library,designname):
        logging.debug("Creating design " + designname)
        self.name = designname
        self.cells = []
        self.nets = []
        self.ports = []
        self.pins = []
        self.shapes = []
        self.library = library
        self.boundary = None
        self.width = None
        self.height = None

        self.set_boundary(((0,0),(0,0)))

    def create_cell(self,cellname,mastername):

        #check if the master exists
        master = self.library.get_design(mastername)
        if ( master is None ):
            logging.error("Specified cell master " + mastername + " doesn't exist in the cell library")
            return None

        # Create the cell
        cell = Cell(cellname,master)
        self.cells.append(cell)

        # Create the pins for the cell
        for port in master.ports:
            self.pins.append(Pin(port.name,cell))

        return cell

    def create_net(self,netname):
        logging.debug("Creating net " + netname) 
        net = Net(netname)
        self.nets.append(net)
        return net

    def create_port(self,portname,direction):
        port = Port(portname,direction)
        self.ports.append(port)
        return port

    def set_boundary(self,points):

        if ( len(points) == 2 ):
            [(llx,lly),(urx,ury)] = points
            self.boundary = shapely.geometry.Polygon(shapely.geometry.box(llx,lly,urx,ury))
        else:
            self.boundary = Polygon(points)

        self.width = self.boundary.bounds[2]
        self.height = self.boundary.bounds[3]


    def get_boundary(self):
        return self.boundary

    def connect_pin(self,cellname,pinname,netname):
        net = self.get_nets(netname)
        pin = self.get_pins(cellname,pinname)
        if ( net is None ):
            logging.error("Failed to find nets matching " + netname)
            return 1
        elif ( pin is None ):
            logging.error("Failed to find pin " + str(pinname) + " of cell " + str(cellname))
            return 1
        else:
            logging.debug("Connecting pin " + pinname + " of cell " + cellname + " to net " + netname)
            net.pins.append(pin)

    def connect_port(self,portname,netname):
        net = self.get_nets(netname)
        port = self.get_ports(portname)
        if ( net is None ):
            logging.error("Failed to find nets matching " + netname)
            return 1
        elif ( port is None ):
            logging.error("Failed to find port " + portname )
            return 1
        else:
            logging.debug("Connecting port " + portname + " to net " + netname)
            net.ports.append(port)

       
    def get_pins(self,cellname,pinname):
        return(next((pin for pin in self.pins if (pin.name == pinname and pin.cell.name == cellname)), None))

    def get_nets(self,netname):
        return next((net for net in self.nets if net.name == netname), None)

    def get_ports(self,portname):
        return next((port for port in self.ports if port.name == portname), None)

    def create_shape(self,owner,layername,purpose,llx,lly,urx,ury):
        layer = self.library.technology.get_layers(layername)
        shape = Shape(self,owner,layer,purpose,llx,lly,urx,ury)
        owner.shapes.append(shape)
        self.shapes.append(shape)


class Technology:
    def __init__(self):
        self.name = "_ICDE_DEFAULT_TECH_"
        self.layers = []
        self.site = None

    def get_layers(self,layername):
        return next((layer for layer in self.layers if layer.name == layername), None)

    def create_layer(self,layername):
        layer = Layer(layername)
        self.layers.append(layer)
        return layer

    def create_site(self,sitename):
        self.site = Site(sitename)
        return self.site


class Site:
    def __init__(self,sitename):
        logging.debug("Creating placement site " + sitename) 
        self.name = sitename
        self.width = None
        self.height = None
        self.symmetry = None

    
class Layer:
    def __init__(self,layername):
        logging.debug("Creating layer " + layername) 
        self.name = layername


class Library:
    def __init__(self,library_name):
        self.name = library_name
        self.designs = []
        self.technology = Technology()

    def create_design(self,design_name):
        design = Design(self,design_name)
        self.designs.append(design)
        return design

    def get_design(self,design_name):
        return next((design for design in self.designs if design.name == design_name), None)


