#ifndef __SWIG_EXTENSION__
#define __SWIG_EXTENSION__

%module icde

%{
#include "core.hpp"
#include "read.hpp"
#include "icde.hpp"
#include "stipples.bitmap"
%}

%include "std_string.i";
%include "std_pair.i";
%include "std_vector.i";
%include "std_map.i";

using namespace std;

%include "object.hpp";
%include "read.hpp";
%include "shape.i";
%include "via.i"
%include "port.i";
%include "pin.i"
%include "net.i"
%include "instance.i";
%include "cell.i";
%include "library.hpp";
%include "icde.hpp";

%init %{
  Tcl_SetVar(interp,"icde_session",Tcl_GetString(SWIG_NewInstanceObj(ICDE::Instance(),SWIGTYPE_p_ICDE,0)),TCL_GLOBAL_ONLY);
%}

#endif

