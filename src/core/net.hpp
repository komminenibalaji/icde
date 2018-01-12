#ifndef __NET_H_INCLUDED__
#define __NET_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>
#include <layer.hpp>
#include <via.hpp>
#include <pin.hpp>
#include <port.hpp>

class Net : public Object {

  map<string,Pin*> pins;
  map<string,Port*> ports;

  vector<Via*> vias;
  vector<Shape*> shapes;

public:

  Net(string);

  Shape* createShape(Layer*,int,int,int,int);
  Via* createVia(ViaDef*,int,int);

  vector<Pin*> getPins();
  vector<Port*> getPorts();
  vector<Shape*> getShapes();
  vector<Via*> getVias();

};

#endif

