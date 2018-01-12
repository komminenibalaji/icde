namespace eval gui {}

proc gui::transform { coord scale {mode canvas} } {

    if { [llength $coord] % 2 != 0 } { 
        puts "Error: Found odd number of elemnets in coordinate list"; return $coord
    }

    set coord [join $coord]

    set newcoord {}

    if { $mode == "canvas" } {
        foreach { x y } $coord {
            lappend newcoord [expr $x * $scale ]
            lappend newcoord [expr -1 * $y * $scale ]
        }
    } else {
        foreach { x y } $coord {
            lappend newcoord [expr $x / $scale ]
            lappend newcoord [expr -1 * $y / $scale ]
        }
    }

    return $newcoord

}


proc gui::translate { coord offset } {

    return "[expr [lindex $coord 0] + [lindex $offset 0] ] [expr [lindex $coord 1] + [lindex $offset 1] ]"

}

proc gui::pan { cpath {direction "none"}  } {

    bind $cpath <ButtonPress-1> {%W scan mark %x %y} ; 
    bind $cpath <B1-Motion> {%W scan dragto %x %y 1}

    if { $direction == "left" } {
	$cpath xview scroll 100 u
    } elseif { $direction == "right" } {
	$cpath xview scroll -100 u
    } elseif { $direction == "up" } {
	$cpath yview scroll -100 u
    } elseif { $direction == "down" } {
	$cpath yview scroll 100 u
    } elseif { $direction == "none" } {
        # Do nothing used for mouse pointer panning
    } else {
	puts "Error: Invalid pan direction specified"
    }

    return 0

}

proc gui::export { cpath output {format png} } {

    if { $format == "png" } {
        set snapshot [image create photo -format Window -data $cpath]
        $snapshot write -format png $output
    } else {
        puts "Error: $format not supported"
    }

}

proc gui::get_root { path } {
   
    return ".[lindex [split $path .] 1]"

}

proc gui::create_icon_images { } {

    foreach icon {plus minus cross} {
	set ::gui::icons($icon) [image create photo -file "$::icde_install_path/tcl/gui/images/16x16/$icon.png"]
    }

}
