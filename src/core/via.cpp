#include <via.hpp>

Via::Via(string vianame,ViaDef* master,int llx,int lly) : Object(vianame) {

  cout << "INFO: Creating new via " << vianame << endl;

  vector<Point> encl = master->getLowerEnclosure();

  lowerLayer = new Shape(master->getLowerLayer(),string("routing"),master->getLowerEnclosure());
  cutLayer = new Shape(master->getCutLayer(),string("routing"),master->getCutEnclosure());
  upperLayer = new Shape(master->getUpperLayer(),string("routing"),master->getUpperEnclosure());

  origin = Point(0,-200);  
  orientation = "F";

  this->setOrigin(llx,lly);

}

void Via::setOrigin(int llx,int lly) {

  int dx = llx - origin.first;
  int dy = lly - origin.second;

  cout << "INFO: Setting Via orgin to (" << llx << " " << lly << ")" << endl;

  lowerLayer->addOffset(dx,dy);
  cutLayer->addOffset(dx,dy);
  upperLayer->addOffset(dx,dy);

  origin = Point(llx,lly);

}

vector<Shape*> Via::getShapes() {

  vector<Shape*> shapes;

  shapes.push_back(lowerLayer);
  shapes.push_back(cutLayer);
  shapes.push_back(upperLayer);

  return shapes;

}

