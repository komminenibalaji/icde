#ifndef __ICDE_H_INCLUDED__
#define __ICDE_H_INCLUDED__

#include <library.hpp>
#include <cell.hpp>

class ICDE {

  static ICDE* icde;

  map<string,Library*> libraries;
  Library* library;
  Cell* cell;

  ICDE();

public:

  static ICDE* Instance();

  Library* setLibrary(string);
  Library* createLibrary(string,string);
  Library* getLibrary();

  Cell* setCell(string cellname);
  Cell* getCell();

};

#endif
