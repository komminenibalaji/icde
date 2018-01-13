#include <core.hpp>
#include <read.hpp>
#include <getopt.h>

int getOptions(int argc,char** argv,map<string,string> &options) {

  int opt;

  while((opt = getopt (argc, argv, "f:i:l:")) != -1) {
    switch(opt) {
      case 'f':
	options["format"] = string(optarg);	
	break;
      case 'i':
	options["filename"] = string(optarg);
	break;
      case 'l':
        options["leffiles"] = string(optarg);
        break;
      case '?':
	if (optopt == 'c')
	  fprintf (stderr, "Option -%c requires an argument.\n", optopt);
	else if (isprint (optopt))
	  fprintf (stderr, "Unknown option `-%c'.\n", optopt);
	else
	  fprintf (stderr,"Unknown option character `\\x%x'.\n",optopt);
	return 1;
      default:
	return 1;
      }
  }

  return 0;

}

int main(int argc,char** argv) {

  map<string,string> options;

  if (getOptions(argc,argv,options)) {
    cout << "ERROR: Failed to process command line arguments" << endl;
  }

  if ( options["format"] == "" || options["filename"] == "" ) {
    cout << "ERROR: Missing required input arguments format (-f) and input (-i)" << endl;
    return 1;
  }

  if ( options["format"] == "def" && options["leffiles"] == "" ) {
    cout << "ERROR: Please specify library LEF files using -l option for reading a DEF" << endl;
    return 1;
  }

  Library* lib = new Library("test","tech");
  
  if ( options["format"] == "lef" ) {
    readLef(lib,options["filename"]);
  } else if ( options["format"] == "def" ) {
    readLef(lib,options["leffiles"]);
    readDef(lib,options["filename"]);
  } else if ( options["format"] == "verilog" ) {
    readVerilog(lib,options["filename"]);
  } else {
    cout << "ERROR: Invalid file format specified. Use lef or def" << endl;
  }

  return 0;

}

