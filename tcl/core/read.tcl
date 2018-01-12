proc read_lef { leffile } {
    set library [$::icde_session getLibrary]
    if { $library == "NULL" } {
        return 1
    }
    readLef $library $leffile
}

proc read_def { deffile } {
    set library [$::icde_session getLibrary]
    if { $library == "NULL" } {
        return 1
    }
    readDef $library $deffile
}
