proc open_lib { libname } {
    set library [$::icde_session setLibrary $libname]
    if { $library == "NULL" } {
        return 1
    }
    return $library
}

proc create_lib { libname techname } {
    set library [$::icde_session createLibrary $libname $techname]
    if { $library == "NULL" } {
	return 1
    }
    return $library
}

proc current_lib { } {
    set library [$::icde_session getLibrary]
    if { $library == "NULL" } {
        return 1
    }
    return $library    
}

proc open_cell { cellname } {

    set cell [$::icde_session setCell $cellname]

    if { $cell == "NULL" } {
        return 1
    }

    if { $::icde_gui_enabled } {

        set is_cell_open 0
        set empty_window NULL
        
        # Check if the cell is already open
	foreach opencell [array names ::gui::settings *cell] {
            set window [lindex [split $opencell ,] 0]
	    if { [string match $::gui::settings($opencell) "NULL"] } {
                set empty_window $window
	    } elseif { [string match [$opencell getName] $cellname] } {
                set is_cell_open 1
		focus $window
                break
	    }
	}

        if { ! $is_cell_open } {
            if { $empty_window == "NULL" } {
		gui::refresh_canvas [gui::get_canvas [gui::create_window $cell]]
	    } else {
		gui::set_window_cell $empty_window $cell
		gui::refresh_canvas [gui::get_canvas $empty_window]
	    }
	}

    }

    return $cell

}

proc current_cell { } {

    set cell [$::icde_session getCell]

    if { $cell == "NULL" } {
        return 1
    }

    return $cell

}

proc set_cell { cell } {

    if { $cell == "NULL" } {
        return 1
    } else {
	$::icde_session setCell [$cell getName]
    }

    return 0

}

