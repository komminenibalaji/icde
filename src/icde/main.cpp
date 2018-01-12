#include <tk.h>
#include <tcl.h>
#include <stdio.h>
#include <string.h>
#include <libgen.h>
#include <unistd.h>
#include <icde.hpp>
#include <common.hpp>
#include <stipples.bitmap>

extern "C" int Icde_Init(Tcl_Interp*);

int Stipple_Init(Tcl_Interp *interp) {

  Tk_DefineBitmap(interp,"hline",hline_bits,16,16);
  Tk_DefineBitmap(interp,"vline",vline_bits,16,16);
  Tk_DefineBitmap(interp,"waves",waves_bits,16,16);
  Tk_DefineBitmap(interp,"cross",cross_bits,16,16);
  Tk_DefineBitmap(interp,"dots4",dots4_bits,16,16);
  Tk_DefineBitmap(interp,"slash",slash_bits,16,16);
  Tk_DefineBitmap(interp,"empty",empty_bits,16,16);

  return TCL_OK;

}

int AppInit(Tcl_Interp *interp) {

  if(Tcl_Init(interp) == TCL_ERROR) return TCL_ERROR;

  if(Tk_Init(interp) == TCL_ERROR) return TCL_ERROR;

  if(Icde_Init(interp)) return TCL_ERROR;

  if(Stipple_Init(interp)) return TCL_ERROR;

  Tcl_SetVar(interp,"tcl_rcFileName","~/.icderc",TCL_GLOBAL_ONLY);

  // Get the pointer to the installation directory

  char buf[1000] = "";

  readlink("/proc/self/exe", buf, sizeof(buf));

  char* icde_home = dirname(dirname(buf));

  cout << "Invoking ICDE from " << icde_home << endl;

  char icde_tcl_init_file[1000] = "";

  Tcl_SetVar(interp,"icde_install_path",icde_home,0);

  Tcl_SetVar(interp,"icde_gui_enabled","0",0);

  sprintf(icde_tcl_init_file,"%s/tcl/.icderc",icde_home);

  return Tcl_EvalFile(interp,icde_tcl_init_file);

}

void printBanner() {

    cout << "\t                                    " << endl;
    cout << "\t             * ICDE *               " << endl;
    cout << "\t                                    " << endl;
    cout << "\t Integrated Chip Design Environment " << endl;
    cout << "\t       Released under GNU GPL       " << endl;
    cout << "\t                                    " << endl;
    cout << "\t                                    " << endl;

}

int main(int argc, char *argv[]) {

  printBanner();
 
  Tk_Main(argc, argv, AppInit);

  return 0;

}

