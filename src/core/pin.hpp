#ifndef __PIN_H_INCLUDED__
#define __PIN_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>
#include <port.hpp>

class Pin : public Object {

  string direction;
  map<string,Shape*> shapes;

public:

  Pin(string,Port*);

  vector<Shape*> getShapes();

};

#endif

