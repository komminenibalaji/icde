#include <library.hpp>

Library::Library(string libname,string techname) : Object(libname) {
  cout << "INFO: Creating library " << libname << endl ;
  technology = new Technology(techname);
  name = libname;
}

Cell* Library::createCell(string cellname) {
  cout << "INFO: Adding cell " << cellname << " to library" << endl;
  cells[cellname] = new Cell(cellname);
  return cells[cellname];
}

vector<Cell*> Library::getCells(string cellname) {

  vector<Cell*> celllist;

  if ( !this ) return celllist;

  if ( cellname == "*" ) {
    for( map<string,Cell*>::iterator itr = cells.begin() ; itr != cells.end() ; ++itr ) {
      celllist.push_back(cells[itr->first]);
    }
  } else {
    if ( cells.find(cellname) != cells.end() ) {
      celllist.push_back(cells[cellname]);
    }
  }

  return celllist; 

}
