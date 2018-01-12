namespace eval gui { }

proc gui::create_shortcut_button { path text icon command } {

    set bimg [image create photo -file "$::icde_install_path/tcl/gui/images/24x24/$icon"]

    ttk::button $path -text $text -image $bimg -command $command

    return $path

}

proc gui::create_shortcut_bar { path } {

    set sb [ttk::frame $path.shortcutbar]

    pack [create_shortcut_button $sb.refresh "Refresh" "refresh.png" "gui::refresh_canvas [get_canvas $sb]"] -side left

    pack [ttk::separator $sb.seprator0 -orient vertical] -side left -fill y -padx 5

    pack [create_shortcut_button $sb.zoomin "Zoom In" "zoom-in.png" "gui::zoom_in [get_canvas $sb]"] -side left
    pack [create_shortcut_button $sb.zoomout "Zoom Out" "zoom-out.png" "gui::zoom_out [get_canvas $sb]"] -side left
    pack [create_shortcut_button $sb.zoomfit "Zoom Fit" "zoom-fit.png" "gui::zoom_fit [get_canvas $sb]"] -side left

    return $sb 

}
