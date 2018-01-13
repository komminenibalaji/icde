namespace eval gui {}

proc gui::draw_shape { cpath shapes tags } {

    upvar 0 gui::settings([winfo toplevel $cpath],scale_factor) scale

    set root [winfo toplevel $cpath]

    foreach shape $shapes {

	set layer [$shape getLayer]
        set purpose [$shape getPurpose]
        set bbox [$shape getBBox]

	set shape [$cpath create rectangle [gui::transform $bbox $scale] -width 1 \
	    -fill $::gui::settings($root,$layer,$purpose,color) \
	    -stipple $::gui::settings($root,$layer,$purpose,pattern) \
	    -outline $::gui::settings($root,$layer,$purpose,color) -tag "shape $layer $tags"]
	if {$tags == "instance"} {
	    return $shape
	}
    }

}

proc gui::clearHighlightedNets {} {
    if {[info exists ::highglights]} {
	foreach highlight $::highlights {
	    $canvas_layout delete $highlight
	}
    }
    set ::highlights ""
}

proc gui::highlightNet {netName} {
    gui::clearHighlightedNets
    set driver ""
    set sinks ""
    	foreach pin $::net_pin($netName) {
		    set shapes [$pin getShapes]
		    set center ""
		    foreach shape $shapes {
			set bbox [$shape getBBox]
			set center [list [expr ([lindex [lindex $bbox 0] 0] + [lindex [lindex $bbox 1] 0]) / 2] [expr ([lindex [lindex $bbox 0] 1] + [lindex [lindex $bbox 1] 1]) / 2]]
			break
		    }
		    if {$center != ""} {
			set port [$pin getPort]
			set dir [$port getDirection]
			if {$dir == "OUT"} {
			    set driver $center
			} else {
			   lappend sinks $center
			}
		    }
	}
	foreach sink $sinks {
		    lappend ::highlights [$canvas_layout create line [lindex $driver 0] [lindex $driver 1] [lindex $sink 0] [lindex $sink 1] -fill white]
	}
}

proc gui::draw_axis { cpath } {

    upvar 0 gui::settings([winfo toplevel $cpath],scale_factor) scale

    $cpath delete axis

    $cpath create line [gui::transform "-1000000 0 1000000 0" $scale canvas] -width 1 -tag axis -arrow last -fill gray20
    $cpath create line [gui::transform "0 -1000000 0 1000000" $scale canvas] -width 1 -tag axis -arrow last -fill gray20

    return 0

}

proc gui::selectInst { cpath x y } {
   set objs [$cpath find overlap [expr $x - 2] [expr 0 - $y + 2] [expr $x + 2] [expr 0 - $y - 2]]
   foreach obj $objs {
       if {[info exists ::inst_name($obj)]} {
           set instName "$::inst_name($obj) "
	   foreach netName $::inst_net($instName) {
		highlightNet $netName
		
	   }
       }
   }
}

proc gui::highlightInst { cpath x y } {
   set objs [$cpath find overlap [expr $x - 2] [expr 0 - $y + 2] [expr $x + 2] [expr 0 - $y - 2]]
   foreach obj $objs {
       if {[info exists ::inst_name($obj)]} {
           set ::status_text "$::inst_name($obj) "
       	  .icde1.status.info configure -text $::status_text
       }
   }
}

proc gui::fill_canvas { cpath } {

    global canvas_path

    upvar 0 gui::settings([winfo toplevel $cpath],scale_factor) scale

    $cpath delete all

    $cpath configure -background black
    set canvas_path $cpath
    gui::draw_axis $cpath

    # Draw the bbox
    gui::draw_shape $cpath [get_boundary] "diearea"

    # Draw all the instances
    foreach inst [get_instances] {
        set shape [gui::draw_shape $cpath [$inst getBoundary] "instance"]
	set ::inst_name($shape) [$inst getName]
	set llx [lindex [lindex [$inst getBBox] 0] 0]
	set lly [lindex [lindex [$inst getBBox] 0] 1]
	set urx [lindex [lindex [$inst getBBox] 1] 0]
	set ury [lindex [lindex [$inst getBBox] 1] 1]
	set cxy [gui::transform "[expr ($llx + $urx) / 2] [expr ($lly + $ury) / 2]" $scale]
        $cpath create text [lindex $cxy 0] [lindex $cxy 1] -text [$inst getName] -fill white
    }
    $cpath bind instance <Enter> {gui::highlightInst %W %x %y}
    $cpath bind instance <ButtonPress-1> {gui::selectInst %W %x %y}
    # Draw all the instance pins
    foreach pin [get_pins] {
        gui::draw_shape $cpath [$pin getShapes] "pin"
    }

    # Draw all the port shapes
    foreach port [get_ports] {
        gui::draw_shape $cpath [$port getShapes] "port"
    }    

    # Draw all the metal shapes
    foreach net [get_nets] {
	set netName [$net getName]
        set ::net_pin($netName) ""
	foreach pin [$net getPins] {
	    set pinName [$pin getName]
	    ::pin_net($pinName) [$net getName]
	    lappend ::net_pin($netName) $pin
	}
        gui::draw_shape $cpath [$net getShapes] "net"
        foreach via [$net getVias] {
	    gui::draw_shape $cpath [$via getShapes] "via"
	}
    }
    foreach inst [get_instances] {
	set pins [$inst getPins]
	set instName [$inst getName]
	set ::inst_net($instName) ""
	foreach pin $pins {
	    set pinName [$pin getName]
	    if {[info exists ::pin_net($pinName)]} {
		append ::inst_net($instName) $::pin_net($pinName)
	    }    
	}
    }

    # Draw all the metal blockages
    gui::draw_shape $cpath [get_routing_blockages] "blockage"

    return 0;
    
}

proc gui::refresh_canvas { cpath } {

    set ::gui::settings([winfo toplevel $cpath],scale_factor) 1e0

    fill_canvas $cpath

    gui::zoom_fit $cpath

}

proc gui::get_canvas { path } {

    return "[winfo toplevel $path].display.editor.canvas.layout"

}

proc gui::set_canvas_bindings { cpath } {

    # Move the origin right
    bind $cpath <KeyPress-Right> "gui::pan $cpath left"

    # Move origin left
    bind $cpath <KeyPress-Left> "gui::pan $cpath right"

    # Move origin up
    bind $cpath <KeyPress-Up> "gui::pan $cpath up"

    # Move origin down 
    bind $cpath <KeyPress-Down> "gui::pan $cpath down"

    # Fit cell to view port
    bind $cpath <KeyPress-f> "gui::zoom_fit $cpath"

    # Fit cell to view port
    bind $cpath <KeyPress-Z> "gui::zoom_out $cpath \"%x %y\""

    # Fit cell to view port
    bind $cpath <KeyPress-R> "gui::refresh_canvas $cpath"

    # Mouse roll up to zoom in
    bind $cpath <Button-5> "gui::zoom_out $cpath \"%x %y\""

    bind $cpath <Motion> "gui::highlightInst $cpath %x %y"

    # Mouse rool down to zoom out
    bind $cpath <Button-4> "gui::zoom_in $cpath \"%x %y\""

    $cpath bind instance <Any-Leave> {
        #.icde1.status.info configure -text {Leaving instance}
    }

    #bind $cpath <Motion> {      
     #   set cc [list [.icde1.display.editor.canvas.layout canvasx %x 1] [.icde1.display.editor.canvas.layout canvasy %y 1]]
      #  set lc [gui::transform $cc 1]
       # set text [format {%%.3f %%.3f} [expr [lindex $lc 0] / 1000e0] [expr [lindex $lc 1] / 1000e0]]
        #.icde1.status.position configure -text $text
    #}

    return 0

}

proc gui::create_canvas { path } {

    set cp [ttk::frame $path.canvas]

    set cpysc [ttk::scrollbar $cp.yscroll -command "$cp.canvas yview" -orient vertical]
    set cpxsc [ttk::scrollbar $cp.xscroll -command "$cp.canvas xview" -orient horizontal]

    pack $cpysc -side right -fill y

    set cpc [canvas $cp.layout -relief sunken -background grey \
		 -xscrollcommand "$cpxsc set" -yscrollcommand "$cpysc set" \
		 -borderwidth 0 -width 800 -height 600]

    pack $cpc -expand 1 -fill both

    pack $cpxsc -fill x

    set_canvas_bindings $cpc

    return $cp

}
