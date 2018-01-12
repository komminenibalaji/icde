proc gui::show_canvas_manager { path } {

    $path.display.editor.manager insert end $path.display.editor.manager.canvas -weight 60

    $path.display.editor insert 0 $path.display.editor.manager

    return 0

}

proc gui::hide_canvas_manager { path } {

    $path.display.editor.manager forget $path.display.editor.manager.canvas

    if { [llength [$path.display.editor.manager panes]] == 0 } {
	$path.display.editor forget $path.display.editor.manager
    }

    return 0

}

proc gui::create_canvas_manager_header { path } {

    grid [ttk::label $path.header:title -text "DISPLAY SETTINGS" -relief raised -anchor center] -row 0 -column 0 -sticky nsew -columnspan 5
    grid [ttk::button $path.header:close -image $gui::icons(cross) \
	      -command "gui::hide_canvas_manager [get_root $path]" -style Raised.TButton] \
	-row 0 -column 5 -sticky ew

    grid [ttk::label $path.header:settings -text "" -width 2 -relief raised -anchor center] -row 1 -column 0 -sticky ew
    grid [ttk::label $path.header:label -text "Object" -relief raised -width 20] -row 1 -column 1 -columnspan 3 -sticky ew
    grid [ttk::label $path.header:visible -text "V" -relief raised -width 4 -anchor center] -row 1 -column 4
    grid [ttk::label $path.header:selectable -text "S" -relief raised -width 4 -anchor center] -row 1 -column 5

    puts $path

}

proc gui::toggle_canvas_manager_entry { path reference } {

    set root [get_root $path]

    if { $gui::settings([get_root $path],$reference,expanded) } {

	set gui::settings($root,$reference,expanded) 0

        $path.$reference:settings configure -image $gui::icons(plus)

	foreach child [winfo children $path] {
	    if { [regexp "^$path\.$reference:\\w+:.*$" $child] } {
		grid remove $child
	    }
	}

    } else {

	set gui::settings($root,$reference,expanded) 1

        $path.$reference:settings configure -image $gui::icons(minus)

	foreach child [winfo children $path] {
	    if { [regexp "^$path\\.($reference:\\w+):\\w+$" $child match childref] } {
		grid $child
		if { [info exists gui::settings($root,$childref,expanded)] } { 
                    set gui::settings($root,$childref,expanded) 0
		    $path.$childref:settings configure -image $gui::icons(plus)
		}
	    }
	}

    }


}

proc gui::create_canvas_manager_entry { path reference label tags offset {createButton 0} } {

    set row [lindex [grid size $path] 1]

    if { $createButton } {
	set offset [expr $offset - 1]
    }     

    for { set column 0 } { $column <= $offset } { incr column } {
	grid [ttk::label "$path.$reference:offset$column" -text "" -width 2 -style White.TLabel] -row $row -column $column -sticky ew
    }
    
    if { $createButton } {

        set gui::settings([get_root $path],$reference,expanded) 1

	grid [ttk::button $path.$reference:settings -style White.TButton \
		  -image $gui::icons(minus) -command "gui::toggle_canvas_manager_entry $path $reference"] \
	    -row $row -column $column -sticky ew

	incr column

    }

    grid [ttk::label $path.$reference:label -text $label \
	      -style White.TLabel -width 20] -row $row -column $column -columnspan [expr 3 - $offset] -sticky w

    grid [ttk::checkbutton $path.$reference:visible -style White.TCheckbutton \
	      -variable gui::settings([get_root $path],$reference,visible)\
	      -command "if { \$gui::settings([get_root $path],$reference,visible) } { 
                              [get_canvas $path] itemconfigure \"$tags\" -state normal;
                        } else {
                              [get_canvas $path] itemconfigure \"$tags\" -state hidden;}"] -row $row -column 4

    grid [ttk::checkbutton $path.$reference:selectable -style White.TCheckbutton \
	      -variable gui::settings([get_root $path],$reference,selectable) \
	      -command "puts {Selectable $reference}"] -row $row -column 5

    set gui::settings([get_root $path],$reference,visible) 1
    set gui::settings([get_root $path],$reference,selectable) 1

    return 0

}

proc gui::create_canvas_manager_group { path name object {types {}} {layers {}} } {

    if { [llength $layers] > 0 } {
        set createButton 1
    } else {
        set createButton 0
    }

    create_canvas_manager_entry $path $object $name $object 0 $createButton

    if { [llength $layers] > 0 } { 
	foreach layer $layers {
	    create_canvas_manager_entry $path "$object:$layer" $layer "$object&&$layer" 1
	}
    }

    if { [llength $types] > 0 } {
        foreach type $types {
	    create_canvas_manager_entry $path "$object:$type" $type "$object&&$type" 1 $createButton
	    if { [llength $layers] > 0 } { 
		foreach layer $layers {
		    create_canvas_manager_entry $path "$object:$type:$layer" $layer "$object&&$type&&$layer" 2
		}
	    }
	}
    }

    return 0

}

proc gui::create_canvas_manager { path } {

    set cm [ttk::frame $path.canvas -style White.TFrame]

    grid columnconfigure $cm 3 -weight 1

    create_canvas_manager_header $cm

    create_canvas_manager_group $cm "Die Area" "diearea"
    create_canvas_manager_group $cm "Instances" "instance"
    create_canvas_manager_group $cm "Pins" "pin" "" "metal1 metal2 metal3"
    create_canvas_manager_group $cm "Ports" "port" "" "metal1 metal2 metal3"
    create_canvas_manager_group $cm "Nets" "net" "power ground clock" "metal1 metal2 metal3"
    create_canvas_manager_group $cm "Vias" "via"
    create_canvas_manager_group $cm "Routing Blockages" "blockage" "" "metal1 metal2 metal3"
    create_canvas_manager_group $cm "Shapes" "shape"

    # Compress the tree
    foreach entry {diearea instance pin port net via blockage shape} {
	if { [info exists gui::settings([get_root $cm],$entry,expanded)] } {
	    gui::toggle_canvas_manager_entry $cm $entry
	}
    }

    return $path.canvas
    
}

