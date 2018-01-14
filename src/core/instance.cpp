#include <instance.hpp>

Instance::Instance(string instname,Cell* master) : Object(instname) {
  cout << "INFO: Creating new instance " << instname << " of type " << master->getName() << endl;        

  boundary = new Shape(master->getBoundary()->getLayer(),
                       master->getType(),
                       master->getBoundary()->getVertices());

  vector<Port*> ports = master->getPorts();

  for ( int i = 0 ; i < ports.size() ; i++ ) {
    string pinname = instname + ":" + ports[i]->getName();
    pins[pinname] = new Pin(pinname,this,ports[i]);
  }

  cout << "INFO : INST: Created " << pins.size() << " pin for instance " << instname << endl;

}

void Instance::setOrigin(int llx,int lly) {

  boundary->addOffset(llx - origin.first,lly - origin.second);

  for( map<string,Pin*>::iterator itr = pins.begin() ; itr != pins.end() ; ++itr ) {
    vector<Shape*> pinshapes = itr->second->getShapes();
    for( int i = 0 ; i < pinshapes.size() ; i++ ) {
       pinshapes[i]->addOffset(llx - origin.first,lly - origin.second);
    }
  }

  origin = Point(llx,lly);
  
}

void Instance::setOrientation(string orient) {
  orientation = orient;
}

vector<Point> Instance::getBBox() {
  return boundary->getBBox();
}

vector<Pin*> Instance::getPins() {

  vector<Pin*> list;

  for( map<string,Pin*>::iterator itr = pins.begin() ; itr != pins.end() ; ++itr ) {
    list.push_back(itr->second);
  }
 
  return list; 

}

Shape* Instance::getBoundary() {
  return boundary;
}

Pin* Instance::getPinByName(string pinname) {
  return pins[pinname];
}

