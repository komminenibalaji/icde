#ifndef __OBJECT_H_INCLUDED__
#define __OBJECT_H_INCLUDED__

#ifndef __SWIG_EXTENSION__

#include <common.hpp>

#endif

class Object {

protected:

  string id;
  string name;
  map<string,string> properties;
  static int count;

protected:
  
  Object(string);

public:

  string getName();
  void setProperty(string,string);
  void setProperty(string,double);
  string getProperty(string);

};

#endif
