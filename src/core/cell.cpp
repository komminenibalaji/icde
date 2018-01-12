#include <cell.hpp>

Cell::Cell(string cellname) : Object(cellname) {
  name = cellname ;
  boundary = new Shape(string("boundary"),string("diearea"),0,0,10,10);
  type = "custom";
}

string Cell::getType() {
  return type;
}

Shape* Cell::createRoutingBlockage(string layer,int llx,int lly,int urx,int ury) {

  Shape* shape = new Shape(layer,"blockage",llx,lly,urx,ury);

  blockages[shape->getName()] = shape;

  return shape;

}

vector<Shape*> Cell::getRoutingBlockages() {

  vector<Shape*> list;

  for( map<string,Shape*>::iterator itr = blockages.begin() ; itr != blockages.end() ; ++itr ) {
    // All non-boundary blockage layers are routing blockages
    if ( itr->second->getLayer() != "boundary" ) {
      list.push_back(itr->second);
    }
  }

  return list; 

}

Port* Cell::createPort(string portname,string direction) {
  ports[portname] = new Port(portname,direction);
  return ports[portname];
}

vector<Port*> Cell::getPorts() {

  vector<Port*> list;

  for( map<string,Port*>::iterator itr = ports.begin() ; itr != ports.end() ; ++itr ) {
    list.push_back(itr->second);
  }
 
  return list; 
  
}

Net* Cell::createNet(string netname) {
  nets[netname] = new Net(netname);
  return nets[netname];
}

vector<Net*> Cell::getNets() {

  vector<Net*> list;

  for( map<string,Net*>::iterator itr = nets.begin() ; itr != nets.end() ; ++itr ) {
    list.push_back(itr->second);
  }
 
  return list; 
  
}

Instance* Cell::createInstance(string instname,Cell* master) {
  instances[instname] = new Instance(instname,master);
  return instances[instname];
}

vector<Instance*> Cell::getInstances() {

  vector<Instance*> list;

  for( map<string,Instance*>::iterator itr = instances.begin() ; itr != instances.end() ; ++itr ) {
    list.push_back(itr->second);
  }
 
  return list; 
  
}

vector<Pin*> Cell::getPins() {

  vector<Pin*> list;

  for( map<string,Instance*>::iterator itr = instances.begin() ; itr != instances.end() ; ++itr ) {
    vector<Pin*> instpins = itr->second->getPins();
    for( int i = 0 ; i < instpins.size() ; i++ ) {
      list.push_back(instpins[i]);
    }
  }
 
  return list; 
  
}

void Cell::setBoundary(int llx,int lly,int urx,int ury) {
  boundary->setBBox(llx,lly,urx,ury);
}

Shape* Cell::getBoundary() {
  return boundary;
}

