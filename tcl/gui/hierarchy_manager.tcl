proc gui::show_hierarchy_manager { path } {

    $path.display.editor.manager insert end $path.display.editor.manager.hierarchy -weight 30

    return 0

}

proc gui::hide_hierarchy_manager { path } {

    $path.display.editor.manager forget $path.display.editor.manager.hierarchy

    return 0

}

proc gui::create_hierarchy_manager { path } {

    set hm [ttk::treeview $path.hierarchy]

    return $hm
    
}

