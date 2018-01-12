#ifndef __LAYER_H_INCLUDED__
#define __LAYER_H_INCLUDED__

#include <object.hpp>

class Layer : public Object {

  int minWidth;
  int minSpacing;
  string direction;
  
public:

  Layer(string);

  void setMinWidth(int);
  int getMinWidth();

  void setMinSpacing(int);
  int getMinSpacing(); 

  void setDirection(string);
  string getDirection();

};

#endif

