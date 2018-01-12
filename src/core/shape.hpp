#ifndef __SHAPE_H_INCLUDED__
#define __SHAPE_H_INCLUDED__

#include <object.hpp>

typedef pair<int,int> Point;

class Shape : public Object {

  string layer;
  string purpose;
  vector<Point> vertices;

public:
 
  Shape(string,string,int,int,int,int);
  Shape(string,string,vector<Point>);

  static string getNewShapeName(string,string);
 
  int setBBox(int,int,int,int);

  vector<Point> getBBox();
  vector<Point> getVertices();

  void addOffset(int,int);

  string getLayer();
  string getPurpose();

};

#endif

