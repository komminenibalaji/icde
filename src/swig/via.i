%typemap(out) vector<Via*> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Via* ptr = (($1_type &)$1)[i];
       Tcl_ListObjAppendElement(interp, $result, SWIG_NewInstanceObj(ptr,$descriptor(Via *),0)); 
    }
}

%include "via.hpp";

