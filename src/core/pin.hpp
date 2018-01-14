#ifndef __PIN_H_INCLUDED__
#define __PIN_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>
#include <port.hpp>

class Instance;

class Pin : public Object {

  Instance* instance;
  string direction;
  map<string,Shape*> shapes;

public:

  Pin(string,Instance*,Port*);

  vector<Shape*> getShapes();

  Instance* getInstance();

};

#endif

