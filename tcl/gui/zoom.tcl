namespace eval gui {}

proc gui::zoom { cpath center ratio } {

    upvar 0 ::gui::settings([winfo toplevel $cpath],scale_factor) scale

    set move_view_port 1

    if { $center == "ND" } {
	set center [list "0" [winfo height $cpath]]
        set move_view_port 0
    }

    set x [lindex $center 0]
    set y [lindex $center 1]

    set old_center [list [$cpath canvasx $x] [$cpath canvasy $y]]
    set bsvp [gui::transform $old_center $scale layout]

    set scale [expr $scale * $ratio]
    
    $cpath scale all 0 0 $ratio $ratio

    set new_center [gui::transform $bsvp $scale canvas]
    set dx [expr [lindex $new_center 0] - [lindex $old_center 0]]
    set dy [expr [lindex $new_center 1] - [lindex $old_center 1]]

    # Move the view port to center around the $x $y

    if { $move_view_port } {
	$cpath xview scroll [expr int($dx)] u
	$cpath yview scroll [expr int($dy)] u
    }

    return 0

}

proc gui::zoom_in { cpath {center "ND"} } {
    gui::zoom $cpath $center "1.25e0"
    focus $cpath
}

proc gui::zoom_out { cpath {center "ND"} } {
    gui::zoom $cpath $center "0.8e0"
    focus $cpath
}

proc gui::zoom_fit { cpath } {

    upvar 0 ::gui::settings([winfo toplevel $cpath],scale_factor) scale

    $cpath scale all 0 0 [expr 1.0 / $scale] [expr 1.0 / $scale]
    
    set cwidth [winfo width $cpath]
    set cheight [winfo height $cpath]

    # First time canvas is not displayed yet use default width and height
    if { $cwidth == 1 || $cheight == 1 } {
        set cwidth [$cpath cget -width]
        set cheight [$cpath cget -height]
    }

    set bbox [$cpath bbox shape]

    set width [expr [lindex $bbox 2] - [lindex $bbox 0]]
    set height [expr [lindex $bbox 3] - [lindex $bbox 1]]

    set width [expr $width * 1.1]
    set height [expr $height * 1.1]

    set hratio [expr 1e0 * $cheight / $height]
    set wratio [expr 1e0 * $cwidth / $width]

    # Pick the smaller of the two ratios
    if { $wratio < $hratio } {
       set ratio $wratio       
    } else {
       set ratio $hratio
    }

    $cpath scale all 0 0 $ratio $ratio

    set scale $ratio
   
    $cpath xview moveto 0
    $cpath yview moveto 0

    $cpath configure -xscrollincrement 1
    $cpath configure -yscrollincrement 1

    $cpath xview scroll [expr int(-0.05 * $cwidth)] u
    $cpath yview scroll [expr int(-0.95 * $cheight)] u

    focus $cpath

}

proc gui::zoom_to { cpath } {

    bind $cpath <ButtonPress-1> {
        set linestartx %x
        set linestarty %y
        puts "$linestartx $linestarty"
        set tline [$cpath create line $linestartx $linestarty %x %y]
    }

    bind $cpath <B1-Motion> { 
        puts "$linestartx $linestarty %x %y"
        if { %x - $linestartx > %y - $linestarty } {
            $cpath coord $tline $linestartx $linestarty %x $linestarty
        } else {
            $cpath coord $tline $linestartx $linestarty $linestartx %y
        }        
    }

    bind $cpath <ButtonRelease-1> {
        puts "$linestartx $linestarty %x %y"
        if { %x - $linestartx > %y - $linestarty } {
            $cpath coord $tline $linestartx $linestarty %x $linestarty
        } else {
            $cpath coord $tline $linestartx $linestarty $linestartx %y
        }        
    }

}
