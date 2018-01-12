proc gui::create_status_bar { path } {

    set sb [frame $path.status -relief sunken  -height 20 -bd 2]

    label $sb.position -width 30 -bd 2 -relief ridge

    label $sb.help -width 20 -bd 2 -relief ridge -justify left

    label $sb.info -width 40 -bd 2 -relief ridge -justify left

    pack $sb.help -side left -fill x -expand 1

    pack $sb.position -side right

    pack $sb.info -side right

    return $sb

}

