%typemap(out) vector<Instance*> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Instance* ptr = (($1_type &)$1)[i];
       Tcl_ListObjAppendElement(interp, $result, SWIG_NewInstanceObj(ptr,$descriptor(Instance *),0)); 
    }
}

%ignore Instance(string,Cell*);

%include "instance.hpp";

