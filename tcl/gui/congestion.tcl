proc toolTipInfoMsg {msg} {
   global canvas_layout
    showTooltip $canvas_layout $msg 100
    catch { after 5000 destroy $canvas_layout.tooltip }
}

proc readCongestionMap {fileName} {
    foreach item [array names cong_db gcells,*] {
	unset cell_db($item)
    }
    set f [open $fileName "r"]
    while {[gets $f line] >= 0} {
	if {[regexp {^m(\d+)\s+(\S+)\s+(\S+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)(.*)$} $line matched layerNum capacity weight x1 y1 x2 y2 nets]} {
	   if {[info exists cell_db(gcells,$layerNum)]} {
	   	lappend cell_db(gcells,$layerNum) $line
	   } else {
	   	set cell_db(gcells,$layerNum) $line
	   }
	}
    }
}

proc readTrackCong {fileName} {
    global cell_db
    foreach item [array names cell_db tcells,*] {
	unset cell_db($item)
    }
    set f [open $fileName "r"]
    while {[gets $f line] >= 0} {
	if {[regexp {^(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\S+)$} $line matched layerNum x1 y1 x2 y2 netName]} {
	   if {[info exists cell_db(tcells,$layerNum)]} {
	   	lappend cell_db(tcells,$layerNum) $line
	   } else {
	   	set cell_db(tcells,$layerNum) $line
	   }
	}
    }
}

proc showTrackCong {layerNum} {
    global canvas_layout
    global cell_db
    if {[info exists cell_db(tcells)]} {
	foreach object $cell_db(tcells) {
	   $canvas_layout delete $object
	}
    }
    set cell_db(tcells) ""
    if {[info exists cell_db(tcells,$layerNum)]} {
	foreach line $cell_db(tcells,$layerNum) {
	   if {[regexp {^(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\S+)$} $line matched layerNum x1 y1 x2 y2 netName]} {
		set screenCoords [getScreenBoxFromDesignBox [list $x1 $y1 $x2 $y2]]
		set id [$canvas_layout create rect [lindex $screenCoords 0] [lindex $screenCoords 1] [lindex $screenCoords 2] [lindex $screenCoords 3] -width 1 -tags [list object tcell] -outline white]
	   	lappend cell_db(tcells) $id
		set cell_db(tcell,nets,$id) $netName
	   }
	}
    }
}

# bind motion over gcell to tool tip info about nets and weights
proc showCongestion {layerNum} {
    global canvas_layout
    global cell_db
    global net
    if {[info exists cell_db(gcells)]} {
	foreach object $cell_db(gcells) {
	   $canvas_layout delete $object
	}
    }
    gui::clearHighlightedNets
    set cell_db(gcells) ""
    bind $canvas_layout <ButtonPress-3> {showNetsInGCell}
    if {[info exists cell_db(gcells,$layerNum)]} {
	foreach line $cell_db(gcells,$layerNum) {
	   if {[regexp {^m(\d+)\s+(\S+)\s+(\S+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)(.*)$} $line matched layerNum capacity weight x1 y1 x2 y2 nets]} {
		set ratio [expr $weight / $capacity]
		set color "green"
		if {$ratio > 3} {
		   set color "red"
		} elseif {$ratio > 2} {
		   set color "orange"
		} elseif {$ratio > 1} {
		   set color "yellow"
		}
		set screenCoords [getScreenBoxFromDesignBox [list $x1 $y1 $x2 $y2]]
		set id [$canvas_layout create rect [lindex $screenCoords 0] [lindex $screenCoords 1] [lindex $screenCoords 2] [lindex $screenCoords 3] -width 1 -tags [list object gcell] -fill $color -stipple gray25]
	   	lappend cell_db(gcells) $id
		set ratio "[expr (int($ratio*100)*1.0)/100.0]x"
		set cell_db(gcell,info,$id) "congestion $ratio\n capacity $capacity"
		set cell_db(gcell,nets,$id) ""
		foreach item [split $nets " "] {
		   if {[regexp {^(.+):(.+)$} $item matched netName cost]} {
		   if {[regexp {^(.+)_(\d+)_$} $netName matched root bitNum] && ![info exists net($netName,nodes)]} {
			set netName "$root%$bitNum%"
		   }
		   lappend cell_db(gcell,nets,$id) $netName
		   append cell_db(gcell,info,$id) "\n$netName $cost"
		   }
		}
	   }
	}
    }
}

proc loadBufferCongestion {fileName} {
    global cell_db
    global canvas_layout
    global pcells
    global pcell_nets
    foreach item [array names pcells *] {
	unset pcells($item)
    }
    set designCoords [getDesignBoxFromScreenBox [$canvas_layout coords $design(objectID)]]
    for {set i 0} {$i <= [expr [lindex $designCoords 2] / 12000]} {incr i} {
    	for {set j 0} {$j <= [expr [lindex $designCoords 3] / 9000]} {incr j} {
	   set pcells($i,$j) 0
	   set pcell_nets($i,$j) ""
    	}
    }
    set fh [open $fileName "r"]
    while {[gets $fh line] >= 0} {
	if {[regexp {\{(\S+) (\S+)\} repeater \{(\S+) } $line matched x y instType netName]} {
	   set bbox $cell($instType,bbox)
	   lset bbox 0 [expr [lindex $bbox 0] + $x]
	   lset bbox 2 [expr [lindex $bbox 2] + $x]
	   lset bbox 1 [expr [lindex $bbox 1] + $y]
	   lset bbox 3 [expr [lindex $bbox 3] + $y]
	   addRectToPCells $bbox 1.2 $netName
	}
    }
    showBufferCongestion
}

proc showBufferCongestion {} {
    global cell_db
    global canvas_layout
    global pcells
    global pcell_nets
    if {[info exists cell_db(pcells)]} {
	foreach object $cell_db(pcells) {
	   $canvas_layout delete $object
	}
    }
    set cell_db(pcells) ""
    bind $canvas_layout <ButtonPress-3> {showNetsInPCell}
    foreach item [array names pcells *] {
	if {$pcells($item) < 0.9} {
	   continue
	}
	regexp {^(\d+),(\d+)$} $item matched i j
	set designBox [list [expr $i * 12000] [expr $j * 9000] [expr ($i + 1) * 12000] [expr ($j + 1) * 9000]]
	set screenCoords [getScreenBoxFromDesignBox $designBox]
	set color "yellow"
	if {$pcells($item) > 1.2} {
	   set color "red"
	} elseif {$pcells($item) > 1.0} {
	   set color "orange"
	} else {
	   continue
	}
	set id [$canvas_layout create rect [lindex $screenCoords 0] [lindex $screenCoords 1] [lindex $screenCoords 2] [lindex $screenCoords 3] -fill $color -stipple gray25 -tags [list object gcell]]
	lappend cell_db(pcells) $id
	set netList [join $pcell_nets($item) ","]
	set cell_db(gcell,info,$id) "$netList"
	set cell_db(gcell,nets,$id) $pcell_nets($item)
    }
}

proc addRectToPCells {designCoords multiplier {netName ""}} {
    global pcells
    global pcell_nets
    for {set i [expr [lindex $designCoords 0] / 12000]} {$i <= [expr [lindex $designCoords 2] / 12000]} {incr i} {
    	for {set j [expr [lindex $designCoords 1] / 9000]} {$j <= [expr [lindex $designCoords 3] / 9000]} {incr j} {
	   set coords $designCoords
	   if {[lindex $designCoords 0] < [expr $i * 12000]} {
		lset coords 0 [expr $i * 12000]
	   }	
	   if {[lindex $designCoords 2] > [expr ($i + 1) * 12000]} {
		lset coords 2 [expr ($i + 1) * 12000]
	   }	
	   if {[lindex $designCoords 1] < [expr $j * 9000]} {
		lset coords 1 [expr $j * 9000]
	   }	
	   if {[lindex $designCoords 3] > [expr ($j + 1) * 9000]} {
		lset coords 3 [expr ($j + 1) * 9000]
	   }	
	   set areaOverlap [expr ([lindex $coords 2] - [lindex $coords 0]) * ([lindex $coords 3] - [lindex $coords 1])]
	   set area [expr 12000 * 9000]
	   set ratio [expr (1.0 * $areaOverlap) / (1.0 * $area)]
	   if {![info exists pcells($i,$j)]} {
	   	set pcells($i,$j) [expr ($ratio * $multiplier)]
	   } else {
	   	set pcells($i,$j) [expr $pcells($i,$j) + ($ratio * $multiplier)]
		if {$pcells($i,$j) > 1 && $netName == ""} {
		   set pcells($i,$j) 1
		}
	   }
	   if {$netName != ""} {
	       lappend pcell_nets($i,$j) "$netName"
	   }
    	}
    }
}

proc showNetsInGCell {} {
    global cell_db
    gui::clearHighlightedNets
    if {![info exists cell_db(currGCell)]} {
	continue
    }
    foreach netName $cell_db(gcell,nets,$cell_db(currGCell)) {
	if {[regexp {^(.+)_(\d+)_$} $netName matched prefix suffix]} {
	   set netName1 "$prefix%$suffix%"
	   if {[info exists ::net_pin($netName)]} {
		set netName $netName1
	   }
	}
	gui::highlightNet $netName
    }
}

proc showNetsInPCell {} {
    global cell_db
    gui::clearHighlightedNets
    if {![info exists cell_db(currPCell)]} {
	continue
    }
    foreach netName $cell_db($cell_db(currPCell),netList) {
	gui::highlightNet $netName
    }
}





proc showTooltip {widget text {offset 0}} {
    if { [string match $widget* [winfo containing  [winfo pointerx .] [winfo pointery .]] ] == 0  } {
   	return
    }

    catch { destroy $widget.tooltip }

    set scrh [winfo screenheight $widget]    ; # 1) flashing window fix
    set scrw [winfo screenwidth $widget]     ; # 1) flashing window fix
    set tooltip [toplevel $widget.tooltip -bd 1 -bg black]
    wm geometry $tooltip +$scrh+$scrw        ; # 1) flashing window fix
    wm overrideredirect $tooltip 1
    pack [label $tooltip.label -bg lightyellow -fg black -text $text -justify left]

    set width [winfo reqwidth $tooltip.label]
    set height [winfo reqheight $tooltip.label]

    set positionX [expr [winfo pointerx .] - round($width / 2.0)]    ; # c.) Tooltip is centred horizontally on pointer.
    set positionY [expr [winfo pointery .] - round($height / 2.0)]  ; # b.) Tooltip is displayed above or below depending on pointer Y position.
    set positionX [expr $positionX + $offset]
    set positionY [expr $positionY + $offset + 50]
    wm geometry $tooltip [join  "$width x $height + $positionX + $positionY" {}]
    raise $tooltip

    bind $widget.tooltip <Any-Enter> [list after 5 [list destroy %W]]
    bind $widget.tooltip <Any-Leave> {destroy %W}
}
proc getDesignBoxFromScreenBox {bbox} {
    global canvas_layout
    return [gui::transform $bbox  $gui::settings([winfo toplevel $canvas_layout],scale_factor) screen]
}


proc getScreenBoxFromDesignBox {bbox} {
    global canvas_layout
    return [gui::transform $bbox  $gui::settings([winfo toplevel $canvas_layout],scale_factor)]
}
