%typemap(out) vector<Port*> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Port* ptr = (($1_type &)$1)[i];
       Tcl_ListObjAppendElement(interp, $result, SWIG_NewInstanceObj(ptr,$descriptor(Port *),0)); 
    }
}

%ignore Port(string,string);

%include "port.hpp";

