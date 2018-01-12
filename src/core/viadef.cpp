#include <viadef.hpp>

ViaDef::ViaDef(string viadefname) : Object(viadefname) {

}

void ViaDef::setLowerLayer(string layername) {
  lowerLayer = layername;
}

void ViaDef::setCutLayer(string layername) {
  cutLayer = layername;
}

void ViaDef::setUpperLayer(string layername) {
  upperLayer = layername;
}

void ViaDef::setLowerEnclosure(int llx,int lly,int urx,int ury) {
  lowerEnclosure.push_back(Point(llx,lly));
  lowerEnclosure.push_back(Point(urx,ury));
}

void ViaDef::setCutEnclosure(int llx,int lly,int urx,int ury) {
  cutEnclosure.push_back(Point(llx,lly));
  cutEnclosure.push_back(Point(urx,ury));
}

void ViaDef::setUpperEnclosure(int llx,int lly,int urx,int ury) {
  upperEnclosure.push_back(Point(llx,lly));
  upperEnclosure.push_back(Point(urx,ury));
}

string ViaDef::getLowerLayer() {
  return lowerLayer ;
}

string ViaDef::getCutLayer() {
  return cutLayer ;
}

string ViaDef::getUpperLayer() {
  return upperLayer ;
}

vector<Point> ViaDef::getLowerEnclosure() {
  return lowerEnclosure;
}

vector<Point> ViaDef::getCutEnclosure() {
  return cutEnclosure;
}

vector<Point> ViaDef::getUpperEnclosure() {
  return upperEnclosure;
}
