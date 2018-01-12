#ifndef __VIA_H_INCLUDED__
#define __VIA_H_INCLUDED__

#include <object.hpp>
#include <shape.hpp>
#include <viadef.hpp>

class Via : public Object {

  Shape* lowerLayer;
  Shape* upperLayer;
  Shape* cutLayer;
  Point origin;
  string orientation;

public:

  Via(string,ViaDef*,int,int);

  void setOrigin(int,int);

  vector<Shape*> getShapes();

};

#endif

