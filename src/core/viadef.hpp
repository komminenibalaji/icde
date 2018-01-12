#ifndef __VIADEF_H_INCLUDED__
#define __VIADEF_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>

class ViaDef : public Object {

  string lowerLayer;
  string cutLayer;
  string upperLayer;

  vector<Point> lowerEnclosure;
  vector<Point> cutEnclosure;
  vector<Point> upperEnclosure;

public:

  ViaDef(string);

  void setLowerLayer(string);
  void setCutLayer(string);
  void setUpperLayer(string);

  void setLowerEnclosure(int,int,int,int);
  void setCutEnclosure(int,int,int,int);
  void setUpperEnclosure(int,int,int,int);

  string getLowerLayer();
  string getCutLayer();
  string getUpperLayer();

  vector<Point> getLowerEnclosure();
  vector<Point> getCutEnclosure();
  vector<Point> getUpperEnclosure();

};

#endif

