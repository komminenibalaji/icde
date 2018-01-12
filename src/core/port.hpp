#ifndef __PORT_H_INCLUDED__
#define __PORT_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>

class Port : public Object {

  string direction;
  map<string,Shape*> shapes;

public:

  Port(string,string);
  
  Shape* createShape(string,int,int,int,int);
  vector<Shape*> getShapes();
  
  string getDirection();

};

#endif

