#include <port.hpp>

Port::Port(string portname,string direction) : Object(portname) {
  this->direction = direction;
}

Shape* Port::createShape(string layer,int llx,int lly,int urx,int ury) {

  Shape* portshape = new Shape(layer,"routing",llx,lly,urx,ury);

  shapes[portshape->getName()] = portshape;

  return portshape;

}

vector<Shape*> Port::getShapes() {

  vector<Shape*> list;

  for( map<string,Shape*>::iterator itr = shapes.begin() ; itr != shapes.end() ; ++itr ) {
    list.push_back(itr->second);
  }

  return list;

}

string Port::getDirection() {
  return direction;
}
