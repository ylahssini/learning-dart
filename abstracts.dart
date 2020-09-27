import 'dart:math';

abstract class Shape {
  double get perimeter;
  double get area;
  String get result;
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double get area => pi * (radius * radius);

  @override
  double get perimeter => pi * 2 * radius;

  @override
  String get result => 'Circle with radius: $radius ~ with perimeter $perimeter ~ with area $area';
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double get area => width * height;

  @override
  double get perimeter => (height * 2) + (width * 2);

  @override
  String get result => 'Rectangle with size: $width, $height ~ with perimeter $perimeter ~ with area $area';
}

class Square extends Rectangle {
  double side;

  Square(this.side) : super(side, side);

  @override
  String get result => 'Square with size: $width, $height ~ with perimeter $perimeter ~ with area $area';
}

void main() {
  Circle myCircle = new Circle(20);
  Rectangle myRectangle = new Rectangle(150, 110);
  Square mySquare = new Square(55);

  print('My Circle: ${myCircle.result}');
  print('My Rectangle: ${myRectangle.result}');
  print('My Square: ${mySquare.result}');

  Shape randomShap;
}