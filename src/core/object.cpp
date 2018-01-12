#include <object.hpp>

int Object::count = 0;

Object::Object(string name) {
  count++;
  id = count;
  this->name = name;
}

void Object::setProperty(string key,string value) {
  properties[key] = value;
}

void Object::setProperty(string key,double value) {
  stringstream buffer;
  buffer << value;
  properties[key] = buffer.str();
}

string Object::getName() {
  return name;
}

string Object::getProperty(string name) {

  if ( properties.find(name) != properties.end() ) {
    return properties[name];
  }

  return "";

}
