#ifndef __CELL_H_INCLUDED__
#define __CELL_H_INCLUDED__

#include <shape.hpp>
#include <object.hpp>
#include <port.hpp>
#include <net.hpp>
#include <instance.hpp>

class Instance;

class Cell : public Object {

  string name;
  string type;

  Shape* boundary;

  map<string,Net*> nets;
  map<string,Port*> ports;
  map<string,Instance*> instances;

  map<string,Shape*> blockages;
  map<string,Shape*> keepouts;

public:

  Cell(string);

  Shape* createRoutingBlockage(string,int,int,int,int);
  vector<Shape*> getRoutingBlockages();

  Port* createPort(string,string);
  vector<Port*> getPorts();

  void setBoundary(int,int,int,int);
  Shape* getBoundary();

  Instance* createInstance(string,Cell*);
  vector<Instance*> getInstances();

  Net* createNet(string);
  vector<Net*> getNets();

  vector<Pin*> getPins();

  string getType();

};

#endif

