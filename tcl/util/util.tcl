proc error_info { } {
    set msg [regsub {\"_unknown.*within\n} $::errorInfo {}]
    puts $msg
}

source $icde_install_path/tcl/util/readline.tcl

