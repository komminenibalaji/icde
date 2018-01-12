proc gui::show_library_manager { path } {

    $path.display.editor.manager insert end $path.display.editor.manager.library -weight 30

    return 0

}

proc gui::hide_library_manager { path } {

    $path.display.editor.manager forget $path.display.editor.manager.library

    return 0

}

proc gui::create_library_manager { path } {

    set lm [ttk::treeview $path.library]
    
    return $lm

}

