#ifndef __INSTANCE_H_INCLUDED__
#define __INSTANCE_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>
#include <pin.hpp>
#include <cell.hpp>

class Cell;

class Instance : public Object {

  Point origin;
  string orientation;
  Shape* boundary;
  map<string,Pin*> pins;

public:

  Instance(string,Cell*);

  void setOrigin(int,int);
  void setOrientation(string orientation);  
  vector<Point> getBBox();

  vector<Pin*> getPins();
  Shape* getBoundary();

  Pin* getPinByName(string);

};

#endif

