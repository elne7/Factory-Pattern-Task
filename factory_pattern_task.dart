abstract class Shape {
  void revelMe();
}

class Circle implements Shape {
  @override
  void revelMe() {
    print('You chose to print circle');
  }
}

class Rectangle implements Shape {
  @override
  void revelMe() {
    print('You chose to print rectangle');
  }
}

class Square implements Shape {
  @override
  void revelMe() {
    print('You chose to print square');
  }
}

abstract class ShapeFactory {
  getShape(String shape);
}

class ConcreteShapeFactory implements ShapeFactory {
  @override
  getShape(String shape) {
    switch (shape) {
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'square':
        return Square();
    }
  }
}

void main(List<String> args) {
  var factory = ConcreteShapeFactory();
  var circle = factory.getShape('circle');
  var rectangle = factory.getShape('rectangle');
  var square = factory.getShape('square');

  circle.revelMe();
  rectangle.revelMe();
  square.revelMe();
}