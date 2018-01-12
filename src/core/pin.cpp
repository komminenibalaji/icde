#include <pin.hpp>

Pin::Pin(string pinname,Port* port) : Object(pinname) {

  vector<Shape*> portshapes = port->getShapes();

  for ( int i = 0 ; i < portshapes.size() ; i++ ) {

    Shape* pinshape = new Shape(portshapes[i]->getLayer(),
                                portshapes[i]->getPurpose(),
                                portshapes[i]->getVertices());

    shapes[pinshape->getName()] = pinshape;

  }
   
}

vector<Shape*> Pin::getShapes() { 

  vector<Shape*> list;

  for( map<string,Shape*>::iterator itr = shapes.begin() ; itr != shapes.end() ; ++itr ) {
    list.push_back(itr->second);
  }

  return list;

}
