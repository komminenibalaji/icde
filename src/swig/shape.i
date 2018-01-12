%typemap(out) vector<Point> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Point pt = (($1_type &)$1)[i];
       Tcl_Obj* tpt[2];
       tpt[0] = Tcl_NewIntObj(pt.first);
       tpt[1] = Tcl_NewIntObj(pt.second);
       Tcl_ListObjAppendElement(interp,$result,Tcl_NewListObj(2,tpt)); 
    }
}

%typemap(out) vector<Shape*> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Shape* ptr = (($1_type &)$1)[i];
       Tcl_ListObjAppendElement(interp, $result, SWIG_NewInstanceObj(ptr,$descriptor(Shape *),0)); 
    }
}

%ignore Shape(string,string,string,int,int,int,int);
%ignore Shape(string,string,string,vector<Point>);

%include "shape.hpp";

