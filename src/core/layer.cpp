#include <layer.hpp>

Layer::Layer(string layername) : Object(layername) {

}

void Layer::setDirection(string direction) {
  this->direction = direction;
}

string Layer::getDirection() {
  return this->direction;
}

void Layer::setMinWidth(int width) {
  this->minWidth = width;
}

int Layer::getMinWidth() {
  return this->minWidth;
}

void Layer::setMinSpacing(int spacing) {
  this->minSpacing = spacing;
}

int Layer::getMinSpacing() {
  return this->minSpacing;
}
