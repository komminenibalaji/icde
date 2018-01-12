#ifndef __TECHNOLOGY_H_INCLUDED__
#define __TECHNOLOGY_H_INCLUDED__

#include <object.hpp>
#include <layer.hpp>
#include <viadef.hpp>

class Technology : public Object {

  map<string,Layer*> layers;
  map<string,ViaDef*> viadefs;

public:

  Technology(string);

  Layer* createLayer(string);
  Layer* getLayer(string);

  ViaDef* createViaDef(string);
  ViaDef* getViaDef(string);

};

#endif

