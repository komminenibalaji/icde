namespace eval gui {}

# package require Img

#
# Source all the package files
#

source $icde_install_path/tcl/gui/shortcutbar.tcl
source $icde_install_path/tcl/gui/statusbar.tcl
source $icde_install_path/tcl/gui/display.tcl
source $icde_install_path/tcl/gui/menubar.tcl
source $icde_install_path/tcl/gui/canvas.tcl
source $icde_install_path/tcl/gui/canvas_manager.tcl
source $icde_install_path/tcl/gui/hierarchy_manager.tcl
source $icde_install_path/tcl/gui/library_manager.tcl
source $icde_install_path/tcl/gui/ruler.tcl
source $icde_install_path/tcl/gui/zoom.tcl
source $icde_install_path/tcl/gui/util.tcl
source $icde_install_path/tcl/gui/window.tcl

# Create all image icons up front to avoid overhead
gui::create_icon_images

# Hide the default window created by wish
wm withdraw .

