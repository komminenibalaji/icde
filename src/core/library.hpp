#ifndef __LIBRARY_H_INCLUDED__
#define __LIBRARY_H_INCLUDED__

#include <technology.hpp>
#include <cell.hpp>

class Library : public Object {

  string name;
  Technology* technology;
  map<string,Cell*> cells;
  char hierarchy_delimiter;
  char left_bus_delimiter;
  char right_bus_delimiter;

public:

  Library(string,string);

  Technology* getTechnology() { 
    return technology;
  }

  Cell* createCell(string);
  vector<Cell*> getCells(string cellname = "*");

  int setHierarchyDelimiter(char dlm) {
    hierarchy_delimiter = dlm;
    return 0;
  }

  int setBusDelimiters(char left,char right) {
    left_bus_delimiter = left;
    right_bus_delimiter = right;
    return 0;
  } 
  
};

#endif

