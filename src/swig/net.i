%typemap(out) vector<Net*> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Net* ptr = (($1_type &)$1)[i];
       Tcl_ListObjAppendElement(interp, $result, SWIG_NewInstanceObj(ptr,$descriptor(Net *),0)); 
    }
}

%ignore Net(string);

%include "net.hpp";

