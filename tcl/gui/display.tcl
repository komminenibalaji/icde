proc gui::create_manager_pane { path } {

    set mp [ttk::panedwindow $path.manager -orient vertical]

    # Hierarchy manager
    create_hierarchy_manager $mp

    # Display manager
    create_canvas_manager $mp

    # Library manager
    create_library_manager $mp
 
    return $mp
    
}

proc gui::create_query_box { path } {

    set qb [text $path.query]

    return $qb

}

proc gui::create_info_pane { path } {

    set ip [ttk::panedwindow $path.info -orient vertical]

    # Query info
    create_query_box $ip 
    
    return $ip

}

proc gui::create_editor { path } {

    set ep [ttk::panedwindow $path.editor -orient horizontal]

    create_manager_pane $ep

    $ep add [create_canvas $ep] -weight 100

    create_info_pane $ep

    return $ep

}

proc gui::create_shell { path } {

    set sp [ttk::frame $path.shell]
 
    pack [text $sp.output] -fill x

    pack [ttk::entry $sp.cmdline] -fill x

    return $sp

}

proc gui::create_display { path } {

    set dp [ttk::panedwindow $path.display -orient vertical]

    $dp add [create_editor $dp] -weight 100

    # $dp add [create_shell $dp] -weight 10

    # Show the canvas manager after settings the editor
    gui::show_canvas_manager [get_root $dp]

    return $dp

}
