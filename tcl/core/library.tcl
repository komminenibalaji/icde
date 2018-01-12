proc create_cell { cellname } {
    set library [$::icde_session getLibrary]
    if { $library == "NULL" } {
        return ""
    }
    $library createCell $cellname
}
