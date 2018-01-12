#include <technology.hpp>

Technology::Technology(string techname) : Object(techname) {
  cout << "INFO: Initializing technology data" << techname << endl;
}

Layer* Technology::createLayer(string layername) {
  cout << "INFO: Adding layer " << layername << " to technology" << endl;
  layers[layername] = new Layer(layername);
  return layers[layername];
}

ViaDef* Technology::createViaDef(string viadefname) {
  cout << "INFO: Adding viadef " << viadefname << " to technology" << endl;
  viadefs[viadefname] = new ViaDef(viadefname);
  return viadefs[viadefname];
}

Layer* Technology::getLayer(string layername) {
  
  if ( layers.find(layername) != layers.end() ) {
    return layers[layername];
  }
 
  return NULL;

}

ViaDef* Technology::getViaDef(string viadefname) {
  
  if ( viadefs.find(viadefname) != viadefs.end() ) {
    return viadefs[viadefname];
  }
 
  return NULL;

}

