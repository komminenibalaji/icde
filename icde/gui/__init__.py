import logging
import sys
import tkinter as tk
import shapely.geometry
import shapely.affinity

from tkinter import ttk

class LayoutWindow(tk.Tk):

    def __init__(self, library, design, *args, **kwargs):

        super().__init__(None, *args, **kwargs)

        self.layout = Layout(self,library,design)

        self.geometry('1200x900')

        self.layout.pack(expand=1,fill=tk.BOTH)


class Layout(ttk.Frame):

    def __init__(self,master,library,design):

        super().__init__(master)

        self.canvas = tk.Canvas(self,background="black")

        self.library = library
        
        self.design = design

        self.scaling_factor = 1

        self.fill_canvas()

        self.create_canvas_bindings()

        self.canvas.pack(expand=1,fill=tk.BOTH)

        self.canvas.focus_set()


    def draw_shape(self,shape,fill,outline,stipple,tag):

        self.canvas.create_polygon(self.transform(list(shape.exterior.coords)),fill=fill,outline=outline,stipple=stipple,tag=tag)


    def transform(polygon):
        print("Transform")

    def fill_canvas(self):

        if (self.design is None):
            return

        self.draw_shape(self.design.boundary,None,"grey",None,"shape diearea")

        for cell in self.design.cells:
            master = cell.master
            boundary = shapely.affinity.translate(master.get_boundary(),xoff=cell.origin.x,yoff=cell.origin.y)
            self.draw_shape(boundary,None,"purple",None,"shape cell")
            self.canvas.create_text(self.transform(list(boundary.centroid.coords)),text=cell.name,fill='white')

        for port in self.design.ports:
            boundary = shapely.geometry.box(port.origin.x - 50,port.origin.y - 50,port.origin.x + 50 , port.origin.y + 50)
            self.draw_shape(boundary,None,"blue",None,"shape port")
            self.canvas.create_text(self.transform(list(boundary.centroid.coords)),text=port.name,fill='white')

        # self.canvas.create_rectangle(self.transform([(0,0),(10,10)]),fill="grey",tag="shape")
        # self.canvas.create_rectangle(self.transform([(0,0),(10,10)]),fill="red",tag="shape")
        # self.canvas.create_rectangle(self.transform([(0,0),(10,10)]),fill="red",tag="shape")
        # self.canvas.create_rectangle(self.transform([(0,0),(10,10)]),fill="red",tag="shape")
      
        self.zoom_fit(None)


    def create_canvas_bindings(self):

        # Move the origin right
        self.canvas.bind('<Up>',self.pan)
    
        # Move origin left
        self.canvas.bind('<Left>',self.pan)
    
        # Move origin up
        self.canvas.bind('<Right>',self.pan)
    
        # Move origin down 
        self.canvas.bind('<Down>',self.pan)

         # Fit cell to view port
        self.canvas.bind("a",self.zoom_to)
          
        # Fit cell to view port
        self.canvas.bind("Z",self.zoom_out)
    
        # Fit cell to view port
        self.canvas.bind("z",self.zoom_in)
    
        # Fit cell to view port
        self.canvas.bind("f",self.zoom_fit)     

        # Fit cell to view port
        # self.canvas.bind("<KeyPress-R>" "gui::refresh_canvas $cpath"

        # Mouse roll up to zoom in
        self.canvas.bind("<Button-5>",self.zoom_out) 
    
        # Mouse rool down to zoom out
        self.canvas.bind("<Button-4>",self.zoom_in)

    def transform(self, coords):
   
        newcoords = []

        for coord in coords:
            newcoords.append((coord[0] * self.scaling_factor, -1 * coord[1] * self.scaling_factor))

        return newcoords


    def pan(self,event):

        if ( event.keysym == "Left" ):
    	    self.canvas.xview_scroll(100,'u')
        elif ( event.keysym == "Right" ):
            self.canvas.xview_scroll(-100,'u')
        elif ( event.keysym == "Up" ): 
    	    self.canvas.yview_scroll(-100,'u')
        elif ( event.keysym == "Down" ):
    	    self.canvas.yview_scroll(100,'u')
        else:
    	    logging.error("Invalid pan direction specified")

                
    def zoom_in(self,event):
        self.zoom(event.x,event.y,1.25e0)
        
    def zoom_out(self,event):
        self.zoom(event.x,event.y,0.85e0)

    def zoom(self,cx,cy,ratio):
        self.canvas.scale(tk.ALL,0,0,ratio,ratio)

    def zoom_to(self,event):

        self.zoom_to_rect = None

        self.zoom_to_zoom_to_start_x = None
        self.zomm_to_zoom_to_start_y = None

        self.canvas.bind("<ButtonPress-1>", self.zoom_to_press)
        self.canvas.bind("<B1-Motion>", self.zoom_to_move)
        self.canvas.bind("<ButtonRelease-1>", self.zoom_to_release)

    def zoom_to_press(self, event):

        # save mouse drag start position
        self.zoom_to_start_x = self.canvas.canvasx(event.x)
        self.zoom_to_start_y = self.canvas.canvasy(event.y)

        # create rectangle if not yet exist
        if not self.zoom_to_rect:
            self.zoom_to_rect = self.canvas.create_rectangle(self.zoom_to_start_x, self.zoom_to_start_y, 1, 1, outline='red',tag="zoom_to")

    def zoom_to_move(self, event):

        curX = self.canvas.canvasx(event.x)
        curY = self.canvas.canvasy(event.y)

        w, h = self.canvas.winfo_width(), self.canvas.winfo_height()

        if event.x > 0.9*w:
            self.canvas.xview_scroll(1, 'units') 
        elif event.x < 0.1*w:
            self.canvas.xview_scroll(-1, 'units')
        if event.y > 0.9*h:
            self.canvas.yview_scroll(1, 'units') 
        elif event.y < 0.1*h:
            self.canvas.yview_scroll(-1, 'units')

        # expand rectangle as you drag the mouse
        self.canvas.coords("zoom_to", self.zoom_to_start_x, self.zoom_to_start_y, curX, curY)    

    def zoom_to_release(self, event):
        self.canvas.delete("zoom_to")    

    def zoom_fit(self,event):

        cwidth = self.winfo_width()
        cheight = self.winfo_height()

        if ( cwidth == 1 or cheight == 1 ):
            cwidth = int(self.canvas.cget('width'))
            cheight = int(self.canvas.cget('height'))

        bbox = self.canvas.bbox(tk.ALL)

        width = bbox[2] - bbox[0]
        height = bbox[3] - bbox[1]

        hratio = round(cheight / (height * 1.1),1)
        wratio = round(cwidth / (width * 1.1),1)

        # Pick the smaller of the two ratios
        if ( wratio < hratio ):
           ratio=wratio       
        else:
           ratio=hratio
      
        if ( ratio == 0 ):
            ratio = 0.1

        print(cwidth,cheight,width,height,wratio,hratio,ratio)

        self.canvas.scale(tk.ALL,0,0,ratio,ratio)

        self.scaling_factor = ratio
      
        self.canvas.xview_moveto(0)
        self.canvas.yview_moveto(0)

        self.canvas.configure(xscrollincrement=1)
        self.canvas.configure(yscrollincrement=1)

        self.canvas.xview_scroll(int(-0.1 * cwidth),'unit')
        self.canvas.yview_scroll(int(-0.9 * cheight),'unit')
 
