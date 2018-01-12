#ifndef __LEF_H_INCLUDED__
#define __LEF_H_INCLUDED__

#include <core.hpp>

namespace lef {

  Library* library = NULL;
  Technology* technology = NULL;
  Port* port = NULL;
  Cell* cell = NULL;
  Layer* layer = NULL;
  ViaDef* viadef = NULL;
  
  string obsLayerName = "ND";
  string portName = "ND";
  string portLayerName = "ND";
  string viadefShapeType = "ND";

};

#endif

