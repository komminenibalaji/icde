import math
import logging
import shapely
import shapely.geometry

logging.basicConfig(level=logging.INFO)

def create_floorplan(design,utilization=0.7,width=None,height=None):

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

    # Reset cell placement to 0,0
    for cell in design.cells:
        cell.origin = shapely.geometry.Point(0,0)

