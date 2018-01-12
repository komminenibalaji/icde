#include <shape.hpp>

Shape::Shape(string layer,string purpose,int llx,int lly,int urx,int ury) 
            : Object(Shape::getNewShapeName(layer,purpose)) {
/*
  cout << "INFO: Creating " << layer << " " << purpose
       << "with vertices ((" << llx << "," << lly << ") (" 
       << urx << "," << ury << "))" << endl;
*/
  this->layer = layer;
  this->purpose = purpose;
  setBBox(llx,lly,urx,ury);

}

Shape::Shape(string layer,string purpose,vector<Point> vertices) 
            : Object(Shape::getNewShapeName(layer,purpose)) {

  this->layer = layer;
  this->purpose = purpose;

  if ( vertices.size() > 2 ) {
    this->vertices = vertices;
  } else {
    this->setBBox(vertices[0].first,vertices[0].second,vertices[1].first,vertices[1].second);
  }

}

string Shape::getNewShapeName(string layer,string purpose) {

  string prefix;

  if ( purpose == "routing" ) {
    prefix = "RT";
  } else if ( purpose == "diearea" ) {
    prefix = "RT";
  } else if ( purpose == "pnr" ) {
    prefix = "PR";
  } else if ( purpose == "blockage" ) {
    if ( layer == "boundary" ) {
      prefix = "PB";
    } else {
      prefix = "RB";
    }
  } else {
    cout << "ERROR: Invalid object purpose (" << purpose << ") specified" << endl;
  }

  stringstream ss;
  ss << prefix << Object::count;
/*
  cout << "INFO: Creating new " <<  purpose << " shape " << ss.str() << endl;
*/

  return ss.str();

}

int Shape::setBBox(int llx,int lly,int urx,int ury) {
  vertices.clear();
  vertices.push_back(Point(llx,lly));
  vertices.push_back(Point(llx,ury));
  vertices.push_back(Point(urx,ury));
  vertices.push_back(Point(urx,lly));      
}

vector<Point> Shape::getBBox() {
  vector<Point> bbox;
  bbox.push_back(vertices[0]);
  bbox.push_back(vertices[2]);
  return bbox;
}

vector<Point> Shape::getVertices() {
  return vertices;
}

string Shape::getLayer() {
  return layer;
}

string Shape::getPurpose() {
  return purpose;
}

void Shape::addOffset(int dx,int dy) {
  for ( int i = 0; i < vertices.size() ; i++ ) {
    vertices[i].first += dx;
    vertices[i].second += dy;
  }
}



