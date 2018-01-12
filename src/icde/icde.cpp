#include <icde.hpp>

ICDE* ICDE::icde = NULL;

ICDE::ICDE() {
  library = NULL;
  cell = NULL;
}

ICDE* ICDE::Instance() {

  if (!ICDE::icde) {
    ICDE::icde = new ICDE();
  }

  return ICDE::icde;

}

Library* ICDE::setLibrary(string libname) {

  if ( libraries.find(libname) != libraries.end() ) {
    library = libraries[libname];
  } else {
    cout << "ERROR: Library " << libname << " does not exist" << endl;
  }

  return library;

}

Library* ICDE::createLibrary(string libname,string techname) {
  library = new Library(libname,techname);
  libraries[libname] = library;
  return library;
}

Library* ICDE::getLibrary() {
  if ( !library ) {
    cout << "ERROR: No library is open" << endl;
  }
  return library;
}

Cell* ICDE::setCell(string cellname) {

  if ( !library ) {
    cout << "ERROR: No library is open" << endl;
    return NULL;
  }

  vector<Cell*> celllist = library->getCells(cellname);

  if ( celllist.size() == 0 ) {
    cout << "ERROR: Cell " << cellname << " does not exist in library " << library->getName() << endl;
    return NULL;
  }

  cell = celllist[0];

  return cell;

}

Cell* ICDE::getCell() {

  if ( ! cell ) {
    cout << "ERROR: No cell is open" << endl;
  }

  return cell;

}
