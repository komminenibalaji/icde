proc get_routing_blockages { } {

    set cell [$::icde_session getCell]

    if { $cell == "NULL" } {
	error "ERROR: Failed to get blockages"
    }

    return [$cell getRoutingBlockages]

}

proc get_boundary { } {

    set cell [$::icde_session getCell]

    if { $cell == "NULL" } {
	error "ERROR: Failed to get cell boundary"	
    }

    return [$cell getBoundary]

}

proc get_ports { } {

    set cell [$::icde_session getCell]

    if { $cell == "NULL" } {
	error "ERROR: Failed to get cell boundary"	
    }

    return [$cell getPorts]

}

proc get_instances { } {

    set cell [$::icde_session getCell]

    if { $cell == "NULL" } {
	error "ERROR: Failed to get instances"	
    }

    return [$cell getInstances]

}

proc get_pins { } {

    set cell [$::icde_session getCell]

    if { $cell == "NULL" } {
	error "ERROR: Failed to get pins"	
    }

    set pins [$cell getPins]

    return $pins

}

proc get_nets { } {

    set cell [$::icde_session getCell]

    if { $cell == "NULL" } {
	error "ERROR: Failed to get nets"	
    }

    set nets [$cell getNets]

    return $nets

}
