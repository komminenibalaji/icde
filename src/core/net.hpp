#ifndef __NET_H_INCLUDED__
#define __NET_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>
#include <layer.hpp>
#include <via.hpp>
#include <pin.hpp>
#include <port.hpp>
#include <instance.hpp>

class Net : public Object {

  vector<Pin*> pins;
  vector<Port*> ports;

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

  int connectNet(Pin*);
  int connectNet(Port*);

};

#endif

