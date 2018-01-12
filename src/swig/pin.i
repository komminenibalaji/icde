%typemap(out) vector<Pin*> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Pin* ptr = (($1_type &)$1)[i];
       Tcl_ListObjAppendElement(interp, $result, SWIG_NewInstanceObj(ptr,$descriptor(Pin *),0)); 
    }
}

%ignore Pin(Port*);

%include "pin.hpp";

