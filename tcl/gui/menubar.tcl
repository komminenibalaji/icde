namespace eval gui { }

proc gui::create_menu { path } {

    return [menu $path -borderwidth 2 -relief raised \
		-activebackground "#4d5d6d"  -activeborderwidth 0]

}

proc gui::create_menu_command { path label command {accelerator {}} {icon none} } {

    if { $icon == "none" } {
	$path add command -label [format " %-15s" $label] -command $command \
	    -accelerator $accelerator  -compound left -bitmap empty
    } else {
	$path add command -label [format " %-15s" $label] -command $command \
	    -accelerator $accelerator  -compound left \
	    -image [image create photo -file "$::icde_install_path/tcl/gui/images/16x16/$icon"]
    }

}

proc gui::create_edit_menu { mb } {

    set em [create_menu $mb.edit]

    $mb add cascade -menu $em -label "Edit" -underline 0

}

proc gui::create_view_menu { mb } {

    set vm [create_menu $mb.view]

    $mb add cascade -menu $vm -label "View" -underline 0 

    create_menu_command $vm "Pan" "gui::pan [get_canvas $vm]" "P"
    create_menu_command $vm "Refresh" "gui::refresh_canvas [get_canvas $vm]" "Shift+R" "refresh.png"

    $vm add separator

    create_menu_command $vm "Zoom In" "gui::zoom_in [get_canvas $vm]" "Z" "zoom-in.png"
    create_menu_command $vm "Zoom Out" "gui::zoom_out [get_canvas $vm]" "Shift+Z" "zoom-out.png"
    create_menu_command $vm "Zoom Fit" "gui::zoom_fit [get_canvas $vm]" "F" "zoom-fit.png"

    $vm add separator

    create_menu_command $vm "Hierarchy Browser" "gui::show_hierarchy_manager [get_root $vm]"
    create_menu_command $vm "Library Broswer" "gui::show_library_manager [get_root $vm]"

    $vm add separator

    create_menu_command $vm "Display Settings" "gui::show_canvas_manager [get_root $vm]" "F8" "view-settings.png"

}

proc gui::create_file_menu { mb } {

    set fm [create_menu $mb.file]

    $mb add cascade -menu $fm -label "File" -underline 0

    create_menu_command $fm "Open Cell" "gui::open_cell_window" "" "cell-open.png"
    create_menu_command $fm "Close Cell" "gui::close_cell_window"
	
    $fm add separator

    $fm add cascade -label "     Import" -menu $fm.import
    $fm add cascade -label "     Export" -menu $fm.export

    set fmi [create_menu $fm.import]

    create_menu_command $fmi "Read LEF" "gui::read_lef_window"
    create_menu_command $fmi "Read DEF" "gui::read_def_window"

    set fme [create_menu $fm.export]

    create_menu_command $fme "Write LEF" "gui::write_lef_window"
    create_menu_command $fme "Write DEF" "gui::write_def_window"

    $fm add separator

    create_menu_command $fm "Exit" "exit 0" "Ctrl+Q" "exit.png"

    return 0

}

proc gui::create_menu_bar { path } {

    set mb [create_menu $path.menubar]

    $mb configure -relief flat

    create_file_menu $mb

    create_edit_menu $mb

    create_view_menu $mb

    $path configure -menu $path.menubar 

}
