namespace eval gui {}

proc gui::ruler { } {

    gui::set_mode ruler

    bind .icde.c <ButtonPress-1> {
        set linestartx %x
        set linestarty %y
        puts "$linestartx $linestarty"
        set tline [.icde.c create line $linestartx $linestarty %x %y]
    }

    bind .icde.c <B1-Motion> { 
        puts "$linestartx $linestarty %x %y"
        if { %x - $linestartx > %y - $linestarty } {
            .icde.c coord $tline $linestartx $linestarty %x $linestarty
        } else {
            .icde.c coord $tline $linestartx $linestarty $linestartx %y
        }        
    }

    bind .icde.c <ButtonRelease-1> {
        puts "$linestartx $linestarty %x %y"
        if { %x - $linestartx > %y - $linestarty } {
            .icde.c coord $tline $linestartx $linestarty %x $linestarty
        } else {
            .icde.c coord $tline $linestartx $linestarty $linestartx %y
        }        
    }


}
