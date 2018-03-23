import math
import logging
import shapely
import shapely.geometry

logging.basicConfig(level=logging.INFO)

def floorplan(design,utilization=0.7,width=None,height=None):

    # Calculate the total area for all the cells
    total_area = 0
    for cell in design.cells:
        total_area += cell.master.boundary.area

    target_area = total_area / utilization

    width = math.ceil((target_area**0.5) / 2.700) * 2.700
    height = math.ceil((target_area / width) / 0.38) * 0.38

    logging.info("Setting block boundary to (" + str(width) + "," + str(height) + ")")
    logging.info("Block Utilization: " + str((total_area/(width * height)) * 100))

    design.set_boundary([(0,0),(width,height)])

    [llx, lly] = [0, 0]

    # Place cells randomly
    for i in range(len(design.cells) - 1):

        design.cells[i].set_origin(llx,lly)
        llx = llx + design.cells[i].master.width 

        if ( llx + design.cells[i+1].master.width > width * 0.8 ):
            llx = 0
            lly += design.library.technology.site.height

    # Place pins randomly distributing them evenly on all four side
    total_sides = len(design.boundary.exterior.coords) - 1
    total_ports = len(design.ports)

    ports_per_side = math.ceil(total_ports/total_sides)

    port_count = 0

    for i in range(total_sides):

        p1 = shapely.geometry.Point(design.boundary.exterior.coords[i])
        p2 = shapely.geometry.Point(design.boundary.exterior.coords[i+1])
        side_length = p1.distance(p2)

        (llx,lly) = (p1.x,p1.y)

        for j in range(ports_per_side):

            index = i * ports_per_side + j 

            if ( index < total_ports ):

                if ( p1.x == p2.x ):
                    lly = (side_length / ports_per_side) * j
                else:
                    llx = (side_length / ports_per_side) * j

                design.ports[index].set_origin(llx,lly)
                


