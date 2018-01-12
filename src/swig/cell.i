%typemap(out) vector<Cell*> {
    for (unsigned int i=0; i<$1.size(); i++) {
       Cell* ptr = (($1_type &)$1)[i];
       Tcl_ListObjAppendElement(interp, $result, SWIG_NewInstanceObj(ptr,$descriptor(Cell *),0)); 
    }
}

%ignore Cell(string);

%include "cell.hpp";

