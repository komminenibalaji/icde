#include <icde.hpp>
#include <stipples.bitmap>

int readLef(Library*,string);
Pixmap bitmap;

int readLefProc(ClientData cd, Tcl_Interp *interp, int argc, const char** argv) {

  if ( argc < 3 ) {
    cout << "ERROR: Missing required input arguments. Usage is read_lef <libname> <leffile> [techname]" << endl;
    Tcl_SetResult(interp,(char *)"1",TCL_STATIC);
    return TCL_ERROR;
  }

  ICDE *icde = (ICDE *) cd;

  string libname = string(argv[1]);
  string leffile = string(argv[2]);
  string techname = "";

  if ( argc == 4 ) {
    techname = string(argv[3]);
    if ( !icde->getLibrary(libname) ) {
      icde->setLibrary(new Library(string(libname),string(techname)));
    }
  }

  if ( !icde->getLibrary(libname) ) {
    cout << "ERROR: Specified library does not exist. Please specify 'techname' to create a new library" << endl; 
    Tcl_SetResult(interp,(char *)"1",TCL_STATIC);
    return TCL_ERROR;
  }

  readLef(icde->getLibrary(libname),leffile);

  return TCL_OK;

}

int getDesignsProc(ClientData cd, Tcl_Interp *interp, int argc, const char** argv) {

  if ( argc > 2 ) {
    cout << "Error: Unknown input arguments. Usage is getDesigns [designname]" << endl;
    return TCL_ERROR;
  }

  ICDE *icde = (ICDE *) cd;

  string cellnames;

  if ( argc == 2 ) {
    Cell* cell = icde->getLibrary()->getCell(string(argv[1]));
    if ( cell  ) {
      cellnames = cell->getName();
    } else {
      cout << "WARN: Specified cell " << argv[1] << " does not exist in library" << endl;
    }
  } else {
    cout << "INFO: Getting all cells in librrary" << endl;
    cellnames = icde->getLibrary()->getCellNames();
  }

  Tcl_SetResult(interp,(char *)cellnames.c_str(),TCL_STATIC);

  return TCL_OK;

}

int loadDesignProc(ClientData cd, Tcl_Interp *interp, int argc, const char** argv) {

  if ( argc < 2 ) {
    cout << "ERROR: Missing input arguments. Usage is loadDesign <designname>" << endl;
    return TCL_ERROR;
  }

  ICDE *icde = (ICDE *) cd;

  Cell* cell = icde->getLibrary()->getCell(string(argv[1]));

  if ( cell  ) {

    icde->setCell(cell);

  } else {

    cout << "ERROR: Specified cell " << argv[1] << " does not exist in library" << endl;
    return TCL_ERROR;

  }

  return TCL_OK;

}

int getObjectsProc(ClientData cd, Tcl_Interp *interp, int argc, const char** argv) {

  if ( argc < 2 || argc > 3 ) {
    cout << "Error: Incorrect usage. Usage is getPorperty <objecttype> [objectname]" << endl;
    return TCL_ERROR;
  }

  ICDE *icde = (ICDE *) cd;

  string result = "";

  Cell* cell = icde->getCell();

  if ( !cell ) {
    cout << "ERROR: No design has been loaded. Please load design first" << endl;
    return TCL_ERROR;
  }

  if ( argc == 2 ) {

    vector<Object*> objects = cell->getAllObjects(string(argv[1]));

    if ( objects.size() == 0 ) {
      cout << "ERROR: Failed to find any " << argv[1] << " in design" << endl;
      return TCL_ERROR;        
    }

    for( int i = 0 ; i < objects.size() ; i++ ) {
      result += objects[i]->getName();
      result += " ";
    }

  } else {

    Object* obj = cell->getObject(string(argv[1]),string(argv[2]));

    if ( !obj ) {
      cout << "ERROR: Failed to find " << argv[1] << " matching name " << argv[2] << endl;
      return TCL_ERROR;
    }

    result = obj->getName();

  }

  Tcl_SetResult(interp,(char *)result.c_str(),TCL_STATIC);

  return TCL_OK;

}

int getPropertyProc(ClientData cd, Tcl_Interp *interp, int argc, const char** argv) {

  if ( argc != 4 ) {
    cout << "Error: Incorrect usage. Usage is getPorperty <objecttype> <objectname> <propertyname>" << endl;
    return TCL_ERROR;
  }

  ICDE *icde = (ICDE *) cd;

  string result;

  Cell* cell = icde->getCell();

  if ( !cell ) {
    cout << "ERROR: No design has been loaded. Please load design first" << endl;
    return TCL_ERROR;
  }

  Object* obj = cell->getObject(string(argv[1]),string(argv[2]));

  if ( !obj ) {
    cout << "ERROR: Failed to find " << argv[1] << " matching name " << argv[2] << endl;
    return TCL_ERROR;
  }

  result = obj->getProperty(string(argv[3]));

  Tcl_SetResult(interp,(char *)result.c_str(),TCL_STATIC);

  return TCL_OK;

}

int Icde_Init(ICDE* icde,Tcl_Interp* interp) {

  Tcl_CreateCommand(interp,"readLef",readLefProc,(ClientData) icde,(Tcl_CmdDeleteProc *) NULL);
  Tcl_CreateCommand(interp,"getDesigns",getDesignsProc,(ClientData) icde,(Tcl_CmdDeleteProc *) NULL);
  Tcl_CreateCommand(interp,"loadDesign",loadDesignProc,(ClientData) icde,(Tcl_CmdDeleteProc *) NULL);
  Tcl_CreateCommand(interp,"getProperty",getPropertyProc,(ClientData) icde,(Tcl_CmdDeleteProc *) NULL);
  Tcl_CreateCommand(interp,"getObjects",getObjectsProc,(ClientData) icde,(Tcl_CmdDeleteProc *) NULL);

  Tk_DefineBitmap(interp,"hline",hline_bits,16,16);
  Tk_DefineBitmap(interp,"vline",vline_bits,16,16);
  Tk_DefineBitmap(interp,"waves",waves_bits,16,16);
  Tk_DefineBitmap(interp,"cross",cross_bits,16,16);
  Tk_DefineBitmap(interp,"dots4",dots4_bits,16,16);
  Tk_DefineBitmap(interp,"slash",slash_bits,16,16);
  
  return 0;

}
