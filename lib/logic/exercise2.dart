import 'dart:math';

abstract class Shape {
  double area();
  String describe();
}

class Circle extends Shape {
  double r;
  Circle(this.r);

  @override
  double area() => pi * r * r;

  @override
  String describe() => "Circle (r=$r): area = ${area().toStringAsFixed(2)}";
}

class Rectangle extends Shape {
  double w, h;
  Rectangle(this.w, this.h);

  @override
  double area() => w * h;

  @override
  String describe() => "Rectangle (${w}x$h): area = ${area()}";
}

class Triangle extends Shape {
  double b, h;
  Triangle(this.b, this.h);

  @override
  double area() => 0.5 * b * h;

  @override
  String describe() => "Triangle (b=$b, h=$h): area = ${area()}";
}
