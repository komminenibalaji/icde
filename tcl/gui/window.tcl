namespace eval gui { }

proc start_gui { } {

    if { $::icde_gui_enabled } {
        puts "INFO: GUI is already running"; return 0
    }

    set ::icde_gui_enabled 1

    set opencell [current_cell]
    # Initialize the 
    if { $opencell != 1 } {
        
	set path [gui::create_window $opencell]

	gui::refresh_canvas [gui::get_canvas $path]

    } else {

        gui::create_window "NULL"

    }

    return 0

}

proc stop_gui { } {

    set ::icde_gui_enabled 0

    foreach child [winfo children .] {
	destroy $child
    }

}

proc gui::set_window_default_display_settings { path } {

   set config "$::icde_install_path/etc/display.config"
   set map    "$::icde_install_path/etc/layer.map"

   if { [catch {open $map r} FID] } {
       puts "ERROR: Failed to open file $map. $FID"; return 1
   }

   array unset LH

   while { [gets $FID line] >= 0 } {
       if { [regexp {^\s*$|^\s*\#} $line] } {
           # Ignore empty lines
       } elseif { [regexp {(\w+)\s+(\d+)} $line match layer number] } {
           lappend LH($number) $layer
       } else {
	   puts "ERROR: Incorrect layer map file sytax on line '$line'"
       }
   }

   close $FID

   if { [catch {open $config r} FID] } {
       puts "ERROR: Failed to open file $config. $FID"; return 1
   }

   set root [winfo toplevel $path]

   while { [gets $FID line] >= 0 } {
       if { [regexp {^\s*$|^\s*\#} $line] } {
           # Ignore empty lines
       } elseif { [regexp {(\d+)\s+(\w+)\s+(\w+)\s+(\w+)\s+(\w+)} $line match number purpose color border pattern] } {
           if { [info exists LH($number)] } {
               foreach layer $LH($number) {
		   set ::gui::settings($root,$layer,$purpose,color) $color
		   set ::gui::settings($root,$layer,$purpose,border) $border
		   set ::gui::settings($root,$layer,$purpose,pattern) $pattern
	       }
	   }
       } else {
	   puts "ERROR: Incorrect display config file sytax on line '$line'"
       }       
   }

   return 0

}

proc gui::set_window_cell { path cell } {

    # GUI scale factor
    set ::gui::settings($path,cell) $cell

    if { $cell != "NULL" } {
	wm title $path "ICDE GUI [$cell getName]"
    } else {
	wm title $path "ICDE GUI"      
    }

    return 0

}

proc gui::set_window_default_theme { path } {

    option add *tearOff 0

    ttk::style theme use clam

    ttk::style configure TButton -relief flat -padding 1 -width 0

    ttk::style map TButton -relief [list active groove]

    ttk::style configure White.TFrame -background white
    ttk::style configure White.TButton -background white
    ttk::style configure White.TLabel -background white
    ttk::style configure White.TCheckbutton -background white

    ttk::style configure Raised.TButton -relief raised

    ttk::style map Layer.TButton -background {disabled white}

}

proc gui::set_window_defaults { path cell } {

    # GUI scale factor
    set ::gui::settings($path,scale_factor) 1e0

    # Current mouse mode
    set ::gui::settings($path,mouse_mode) select

    # Set window default display settings
    set_window_default_display_settings $path

    # Initialize the display theme
    set_window_default_theme $path

    # The the current cell for the window
    set_window_cell $path $cell

}

proc gui::set_window_bindings { path } {

    bind $path <FocusIn> "set_cell \$gui::settings($path,cell)"

    return 0

}

proc gui::create_window { cell } {

    set path [toplevel ".icde[expr [regexp -all {\.icde} [winfo children .]] + 1]"]

    set_window_defaults $path $cell

    set_window_bindings $path

    gui::create_menu_bar $path

    pack [ttk::separator $path.menuseprator -orient horizontal] -fill x

    pack [create_shortcut_bar $path] -fill x

    pack [create_display $path] -expand 1 -fill both

    pack [create_status_bar $path] -fill x

    return $path

}
