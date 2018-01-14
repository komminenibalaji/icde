#include <net.hpp>

Net::Net(string netname) : Object(netname) {

  cout << "INFO: Creating new net " << netname << endl;        

}

int Net::connectNet(Pin* pin) {

    cout << pin << endl;
    if ( pin != NULL ) {
        cout << "INFO: NET: Connecting pin " << pin->getName() << " of instance " << pin->getInstance()->getName() << " to net" << this->getName() << endl;
        pins.push_back(pin);
    } else {
        cout << "ERROR: NET: Null pin pointer specified for connecting to net " << this->getName() << endl ; 
    }
    
    return 0;

}

int Net::connectNet(Port* port) {
    ports.push_back(port);
}

vector<Pin*> Net::getPins() {
    return pins;
}

vector<Port*> Net::getPorts() {
    return ports;
}

Shape* Net::createShape(Layer* layer,int lmx,int lmy,int umx,int umy) {

  int llx,lly,urx,ury;

  if ( layer->getDirection() == "horizontal" ) {
    llx = lmx;    
    lly = lmy - layer->getMinWidth();
    urx = umx;
    ury = lmy + layer->getMinWidth() / 2;  
  } else {
    llx = lmx - layer->getMinWidth() / 2;    
    lly = lmy;
    urx = umx + layer->getMinWidth() / 2 ;
    ury = umy;
  }

  shapes.push_back(new Shape(layer->getName(),"routing",llx,lly,urx,ury));

  return shapes[shapes.size() - 1];

}

vector<Shape*> Net::getShapes() {
  return shapes;
}

Via* Net::createVia(ViaDef* viadef,int llx,int lly) {

  stringstream ss;
  ss << this->name << "_VIA" << (vias.size() + 1);

  vias.push_back(new Via(ss.str(),viadef,llx,lly));

  return vias[vias.size() - 1];

}

vector<Via*> Net::getVias() {
  return vias;
}

