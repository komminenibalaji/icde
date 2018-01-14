#include <pin.hpp>

Pin::Pin(string pinname,Instance *owner,Port* port) : Object(pinname) {

  instance = owner;

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

Instance* Pin::getInstance() {
    return instance;
}

