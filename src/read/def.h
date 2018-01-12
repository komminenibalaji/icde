#ifndef __DEF_H_INCLUDED__
#define __DEF_H_INCLUDED__

#include <core.hpp>

namespace def {

  Library* library = NULL;
  Technology* technology = NULL;
  Port* port = NULL;
  Cell* cell = NULL;
  Layer* layer = NULL;
  Instance* inst = NULL;
  Pin* pin = NULL;
  Net* net = NULL;
  vector<Point> points;

  string obsLayerName = "ND";
  string portName = "ND";
  string portLayerName = "ND";
  double scale_factor = 10.0;
};

#endif

