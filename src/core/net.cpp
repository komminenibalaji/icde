#include <net.hpp>

Net::Net(string netname) : Object(netname) {

  cout << "INFO: Creating new net " << netname << endl;        

}

vector<Pin*> Net::getPins() {

  vector<Pin*> list;

  for( map<string,Pin*>::iterator itr = pins.begin() ; itr != pins.end() ; ++itr ) {
    list.push_back(itr->second);
  }
 
  return list; 
  
}

vector<Port*> Net::getPorts() {

  vector<Port*> list;

  for( map<string,Port*>::iterator itr = ports.begin() ; itr != ports.end() ; ++itr ) {
    list.push_back(itr->second);
  }
 
  return list; 
  
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
